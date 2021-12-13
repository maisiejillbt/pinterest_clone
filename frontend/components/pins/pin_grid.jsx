import React from 'react';
import Pin from './pin'
import { Link } from 'react-router-dom'; 

class PinGrid extends React.Component {
    constructor(props){
        super(props);

        this.state = {
            numRows: 0,
            rowRendered: false,
            numCols: null,
            pins:[],
            columnsRendered:{},
            loading:true, 
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
        this.windowResizing=false;

        this.getNumColumns = this.getNumColumns.bind(this);
        this.setNumColumns = this.setNumColumns.bind(this);
        this.setPreviousRow = this.setPreviousRow.bind(this);
        this.setContainerHeight = this.setContainerHeight.bind(this);
        this.windowResizeHandler = this.windowResizeHandler.bind(this);
        this.newRow = this.newRow.bind(this);
        this.infiniteScrollHandler = this.infiniteScrollHandler.bind(this);
        this.columnLoaded = this.columnLoaded.bind(this);
        this.spinner = this.spinner.bind(this);

        // declaring timeouts to be cleared on unmount 
        this.resizeTimeout;
        // this anon makes it so that the resize handler only triggers after 
        // half a second to avoid resetting state too many times
        window.addEventListener('resize', () => {
            clearTimeout(this.resizeTimeout);
            this.windowResizing = true;
            // removing scroll event listener to avoid conflict with resize event listener
            window.removeEventListener('scroll', this.infiniteScrollHandler);
            this.resizeTimeout = setTimeout(() => this.windowResizeHandler(), 500);
        });
    }

    componentDidMount(){
        // shuffling the pins so that each refresh gives different pins at the top
        // setting the initial row
        this.setNumColumns();

        this.props.fetchUserBoards()
            .then(()=>{
                const portfolio = this.props.pins[this.props.pins.map(function(x) {return x.id; }).indexOf(1315)]; 
                const linkedin = this.props.pins[this.props.pins.map(function(x) {return x.id; }).indexOf(1316)]; this.props.pins[1];
                const github = this.props.pins[this.props.pins.map(function(x) {return x.id; }).indexOf(1317)]; 
                const newUpload = this.props.pins[0];
                this.pins = this.props.pins.slice(3).sort(() => Math.random() - 0.5)
                this.pins = portfolio && 
                            linkedin && 
                            github ? 
                            [portfolio, newUpload, linkedin, ...this.pins.slice(1,4), github, ...this.pins.slice(5)] : 
                            this.props.pins;
                this.newRow(this.pins.slice(0,this.state.numCols))
                });
    }

    componentDidUpdate(){
        // loading three starter rows regardless
        if(this.state.rowRendered && this.state.numRows < 3 && !this.windowResizing){
            this.setPreviousRow();
        }
        // updating the containers height for unlimited scroll 
        this.setContainerHeight();
    }

    componentWillUnmount(){
        // timeout and async cleanup on unmount
        clearInterval(this.resizeTimeout)
        this.setState = (state,callback)=>{
            return;
        };
    }

    windowResizeHandler(){
        // reset state
        // add a new row of pins to state and trigger new render loop (in newRow) with new state
        this.setState({
            numRows: 0,
            pins: [],
            columnsRendered:{},
            rowRendered:false,
        });
        this.setNumColumns();
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

        console.log(document.documentElement.scrollHeight)
        console.log(document.documentElement.scrollTop)
        console.log(document.documentElement.clientHeight)
    }

    setPreviousRow(){ 
        const previousRowStart = (this.state.pins.length - this.state.numCols)
        const previousRowend = this.state.pins.length; 
        const newRowEnd = this.state.pins.length + this.state.numCols; 
        const pins = this.pins; 
        const prevPins = pins.slice(previousRowStart,previousRowend);
        const newPins = newRowEnd > this.pins.length ? pins.slice(previousRowend) : pins.slice(previousRowend, newRowEnd);

        if(this.state.rowRendered){
            // adding previous pins height to total column height
            for(let i=0; i < this.state.numCols; i++){
                const pinId = prevPins[i].id; 
                const pin = document.getElementById(pinId);
                if(pin){
                    const pinHeight = pin.offsetHeight;
                    this[`col${i+1}`] += pinHeight;
                }
            }
            // calling new row to set up initial 3 rows 
            if(this.state.numRows < 3 || this.atBottom){
                this.newRow(newPins);
            }
            // adding event listener for infinite scroll
            if(this.state.numRows === 2){
                window.addEventListener('scroll', this.infiniteScrollHandler);
            }  
            // rowRendered as condit for if setPreviousRow can be run again
            const rendered = {}
            Object.keys(this.state.columnsRendered).forEach(v => rendered[v] = false)

            this.setState({ 
                rowRendered: false,
                columnsRendered: rendered,
            })
        }
    } 
    
    spinner(){
        // removing spinner on load of pins
        this.setState({
            loading:false,
        })
    }

    columnLoaded(id, column){
        // setting state upon column image rendering
        const columns = {...this.state.columnsRendered, ...{[column]: true}};
        const rendered = Object.values(columns).every((v) => v === true)
        this.setState({
            columnsRendered: columns,
            rowRendered: rendered,
        });
    }

    newRow(pins){
        const boards = this.props.boards;
        let pinArray = []; 
        let x = 0;
        
        // generating new pin objects from pins prop
        for(let i=0; i < pins.length; i++){
            let colors = ["#FFAC81", "#FF928B","#FEC3A6",
                          "#EFE9AE","#CDEAC0","#2DC7FF",
                          "#A997DF","#533B4D","#393E41"];
            let color = colors[Math.floor(Math.random() * colors.length)];
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
                    loaded={this.columnLoaded}
                    column={i+1}
                    bgColor={color}
                />
                )
            x += 252;
            }
        // adding to pin state for rendering
        // updating num rows
        // CDU for initial rendering of rows will be triggered from this update
        // to load initial rows of pins
        this.setState({
            pins: [...this.state.pins, ...pinArray],
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
        let cols = {};
        for(let i=1; i <= c; i ++){
            cols[i]=false
        }
        return [cols, c];
    }

    setNumColumns(){
        const cols = this.getNumColumns()
        this.setState({
            numCols: cols[1], 
            columnsRendered: cols[0],
        },
        () => {
            // resetting window resize to insure new row can be called again
            this.windowResizing = false;
        })
    }

    setContainerHeight(){
    //sets the height of the .pin-grid div
        const container = document.querySelector('.pin-grid'); 
        const longestCol = Math.max(this.col1, this.col2, this.col3, this.col4, this.col5, this.col6, this.col7); 
        container.style.height = `${longestCol}px`;
    }

    render(){
        return(
            <div className="pin-preview-container"> 
                {
                    this.state.loading ? <img className = "loading" src={window.spinner} alt="loading" /> : null
                }
                <div onLoad={this.spinner} className="pin-grid">
                    { this.state.pins.length > 0 ? this.state.pins.map(pin => (pin)) : null }    
                </div>
            </div>
        )
    }
}

export default PinGrid; 