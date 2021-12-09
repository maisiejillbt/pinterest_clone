import React from 'react';
import Pin from './pin'
import { Link } from 'react-router-dom'; 

class PinGrid extends React.Component {
    constructor(props){
        
        super(props); 
        this.state = {
            numRows: 0,
            prevNumRows:0, 
            numCols: this.getNumColumns(),
            pins:[],
        }

        this.col1 = 0;
        this.col2 = 0; 
        this.col3 = 0; 
        this.col4 = 0; 
        this.col5 = 0; 
        this.col6 = 0; 
        this.col7 = 0; 

        this.getNumColumns = this.getNumColumns.bind(this);
        this.setNumColumns = this.setNumColumns.bind(this);
        this.setPreviousRow = this.setPreviousRow.bind(this);
        this.setContainerHeight = this.setContainerHeight.bind(this);
        this.windowResizeHandler = this.windowResizeHandler.bind(this);
        this.newRow = this.newRow.bind(this);

        // this anon makes it so that the resize handler only triggers after 
        // half a second to avoid resetting state too many times
        const newRowPins = this.props.pins ? this.props.pins.slice(0, this.state.numCols) : null; 
        let resizeTimeout;
        window.addEventListener('resize', () => {
            clearTimeout(resizeTimeout);
            resizeTimeout = setTimeout(() => this.windowResizeHandler(), 500);
        });
    }

    componentDidUpdate(){
        if(this.state.prevNumRows !== this.state.numRows && this.state.numRows < 3){
            this.setPreviousRow();
        }
        // updating the containers height for unlimited scroll 
        this.setContainerHeight()
    }

    componentDidMount(){
        this.props.fetchPins() // fetching pins and setting the initial row directly after
            .then(() => this.newRow(this.props.pins.slice(0,this.state.numCols)));
        this.props.fetchUserBoards();
    }

    windowResizeHandler(){
        // reset state
        // add a new row of pins to state and trigger new render loop (in newRow) with new state
        this.setState({
            numRows: 0,
            prevNumRows:0, 
            pins: [],
            numCols: this.getNumColumns(),
        });

        for(let i = 1; i < 8; i++){
            this[`col${i}`] = 0;
        }
        this.newRow(this.props.pins.slice(0,this.state.numCols))
    }

    setPreviousRow(){ // CONSIDER RENAMING TO SOMETHING MORE DESCRIPTIVE
        const previousRowStart = this.state.pins.length - this.state.numCols;
        const previousRowend = this.state.pins.length; 
        const newRowEnd = this.state.pins.length + this.state.numCols; 

        const pins = this.props.pins; 
        const prevPins = pins.slice(previousRowStart,previousRowend);
        const newPins = pins.slice(previousRowend, newRowEnd);

        if(prevPins.length === this.state.numCols){
            // set timeout is needed to ensure previous row of pins has rendered on the dom 
            setTimeout(() => {
                // adding previous pins height to column height
                for(let i=0; i < this.state.numCols; i++){
                    const pinId = prevPins[i].id; 
                    const pin = document.getElementById(pinId);
                    const pinHeight = pin.offsetHeight;
                    this[`col${i+1}`] += pinHeight;
                }
                // adding to previous num rows to avoid CDU infinate loop 
                this.setState({ 
                    prevNumRows: this.state.prevNumRows += 1
                })
                // calling new row automatically to set up initial 3 rows ====> Consider changing to 5 rows ? 
                if(this.state.numRows < 3){
                    this.newRow(newPins);
                }
                
            }, 300);
        }
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
            }; 
            pinArray.push(
                <Pin 
                    pin={pin} 
                    key={pin.id} 
                    boards={boards} 
                    toggle={this.props.toggle}
                    style={style}
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
            prevNumRows: this.state.numRows,
            numRows: this.state.numRows + 1,
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
        const columns = [this.col1, this.col2, this.col3, this.col4, this.col5, this.col6, this.col7]; 
        const longestCol = Math.max(this.col1, this.col2, this.col3, this.col4, this.col5, this.col6, this.col7); 
        console.log("set height")
        console.log(this.col1)

        container.style.height = `${longestCol}px`;
    }

    render(){
        return(
            <div className="pin-preview-container"> 
                <div className="pin-grid">
                { this.state.pins.length > 0 ? this.state.pins.map(pin => (
                    pin
                )) : null }
                </div>
            </div>
        )
    }
}

export default PinGrid; 