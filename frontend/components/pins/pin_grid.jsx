import React from 'react';
import Pin from './pin'
import InfiniteScroll from 'react-infinite-scroll-component';
import { Link } from 'react-router-dom'; 

class PinGrid extends React.Component {
    constructor(props){
        super(props);

        this.state = {
            numRows: 0,
            rowRendered: false,
            numCols: this.getNumColumns(),
            pins:[],
        }

        this.col1 = 0,
        this.col2 = 0; 
        this.col3 = 0; 
        this.col4 = 0; 
        this.col5 = 0; 
        this.col6 = 0; 
        this.col7 = 0; 
        
        this.pins;
        this.atBottom = false;
        this.initialRender = 0;

        this.getNumColumns = this.getNumColumns.bind(this);
        this.setNumColumns = this.setNumColumns.bind(this);
        this.setPreviousRow = this.setPreviousRow.bind(this);
        this.setContainerHeight = this.setContainerHeight.bind(this);
        this.windowResizeHandler = this.windowResizeHandler.bind(this);
        this.newRow = this.newRow.bind(this);
        this.infiniteScrollHandler = this.infiniteScrollHandler.bind(this);


        // declaring timeouts to be cleared on unmount 
        this.resizeTimeout;
        this.previousRowTimeout;

        // this anon makes it so that the resize handler only triggers after 
        // half a second to avoid resetting state too many times
        const newRowPins = this.pins ? this.pins.slice(0, this.state.numCols) : null; 
        window.addEventListener('resize', () => {
            clearTimeout(this.resizeTimeout);
            this.resizeTimeout = setTimeout(() => this.windowResizeHandler(), 500);
        });

        this.loaded = this.loaded.bind(this);
    }

    componentDidMount(){
        // shuffling the pins so that each refresh gives different pins at the top
        // setting the initial row
        this.props.fetchUserBoards().then(()=>{
            this.pins = this.props.pins.sort(() => Math.random() - 0.5);
            this.newRow(this.pins.slice(0,this.state.numCols))})
    }

    componentDidUpdate(){
        // loading three starter rows regardless
        if(this.state.rowRendered && this.state.numRows < 3){
            this.setPreviousRow();
        }
        // updating the containers height for unlimited scroll 
        this.setContainerHeight();
    }

    componentWillUnmount(){
        clearInterval(this.resizeTimeout)
        clearInterval(this.previousRowTimeout)
        this.setState = (state,callback)=>{
            return;
        };
    }

    windowResizeHandler(){
        // removing scroll event listener to avoid conflict with resize event listener
        window.removeEventListener('scroll', this.infiniteScrollHandler);
        // reset state
        // add a new row of pins to state and trigger new render loop (in newRow) with new state
        this.setState({
            numRows: 0,
            pins: [],
            numCols: this.getNumColumns(),
        });
        this.atBottom = false;
        for(let i = 1; i < 8; i++){
            this[`col${i}`] = 0;
        }
        this.newRow(this.pins.slice(0,this.state.numCols));
    }

    infiniteScrollHandler(){
        if(document.documentElement.scrollHeight - document.documentElement.scrollTop === document.documentElement.clientHeight){
            this.atBottom = true; 
            this.setPreviousRow();
        }else{
            this.atBottom = false;
        } 
    }

    setPreviousRow(){ // CONSIDER RENAMING TO SOMETHING MORE DESCRIPTIVE
        const previousRowStart = this.state.pins.length - this.state.numCols;
        const previousRowend = this.state.pins.length; 
        const newRowEnd = this.state.pins.length + this.state.numCols; 

        const pins = this.pins; 
        const prevPins = pins.slice(previousRowStart,previousRowend);
        const newPins = newRowEnd > this.pins.length ? pins.slice(previousRowend) : pins.slice(previousRowend, newRowEnd);

        // timeout is longer for initial 3 rows because data takes 
        // longer to load on initial render

        let timeout = 2000; 
        if(this.initialRender < 3){
            this.initialRender += 1;
        }else{
            timeout = 500;
        }


        if(this.state.rowRendered){
            // set timeout is needed to ensure previous row of pins has rendered on the dom 
            console.log("rowRendered timeout")
            this.previousRowTimeout = setTimeout(() => {
                // adding previous pins height to column height
                for(let i=0; i < this.state.numCols; i++){
                    const pinId = prevPins[i].id; 
                    const pin = document.getElementById(pinId);
                    if(pin){
                        const pinHeight = pin.offsetHeight;
                        this[`col${i+1}`] += pinHeight;
                    }
                }
                
                // calling new row automatically to set up initial 3 rows ====> Consider changing to 5 rows ? 
                if(this.state.numRows < 3 || this.atBottom){
                    this.newRow(newPins);
                }
                // adding event listener for infinite scroll
                if(this.state.numRows === 3){
                    window.addEventListener('scroll', this.infiniteScrollHandler);
                }  
            }, timeout);
            // row rendered as condit for if set previous row can be run again
            this.setState({ 
                rowRendered: false,
            })
        }
    } 

    loaded(id){
        console.log(id + " loaded")
    }

    newRow(pins){
        const boards = this.props.boards;
        let pinArray = []; 
        let x = 0;
        
        // generating new pin objects from pins prop
        for(let i=0; i < pins.length; i++){
            let y = this[`col${i+1}`];
            let pin = pins[i];
            let style = {
                transform: `translate(${x}px, ${y}px)`,
                zIndex:'1'
            }; 
            pinArray.push(
                <Pin 
                    pin={pin} 
                    key={pin.id} 
                    boards={boards} 
                    toggle={this.props.toggle}
                    style={style}
                    loaded={this.loaded}
                />
                )
            x += 252;
            }

        // adding to pin state for rendering
        // updating num rows
        // updating prev num rows to trigger if statement in 
        // CDU for initial rendering of rows 

        this.setState({
            pins: [...this.state.pins, ...pinArray],
            numRows: this.state.numRows + 1,
            rowRendered: true,
        })
    }

    getNumColumns(){
        const w = window.innerWidth;
        let c = 0; 
        if(w <= 504){
            c = 1; 
        }else if(w >= 505 && w <= 757){
            c = 2; 
        }else if(w >= 758 && w <= 1008){
            c = 3; 
        }else if(w >= 1009 && w <= 1260){
            c = 4; 
        }else if(w >= 1261 && w <= 1512){
            c = 5; 
        }else if(w >= 1513 && w <= 1764){
            c = 6; 
        }else if(w >= 1764){
            c = 7; 
        }
        return c; 
    }

    setNumColumns(){
        this.setState({
            numCols: this.getNumColumns()
        })
    }

    setContainerHeight(){
        const container = document.querySelector('.pin-grid'); 
        const longestCol = Math.max(this.col1, this.col2, this.col3, this.col4, this.col5, this.col6, this.col7); 
        container.style.height = `${longestCol}px`;
    }

    render(){
        return(
            <div className="pin-preview-container"> 
                <div className="pin-grid">
                    { this.state.pins.length > 0 ? this.state.pins.map(pin => (pin)) : null }    
                </div>
            </div>
        )
    }
}

export default PinGrid; 