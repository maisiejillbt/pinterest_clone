import React from 'react';
import Pin from './pin'
import { Link } from 'react-router-dom'; 

class PinGrid extends React.Component {
    constructor(props){
        
        super(props); 
        this.state = {
            newRowLoaded: false, 
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
        this.newRow = this.newRow.bind(this);

        this.pins = this.props.pins


        const newRowPins = this.props.pins ? this.props.pins.slice(0, this.state.numCols) : null; 
        window.addEventListener('resize', this.setNumColumns);
        // window.addEventListener('resize', () => this.setPreviousRow(newRowPins));
    }

    // componentDidUpdate(){
    //     const pins = this.props.pins.slice(0, this.state.numCols); 
    //     this.setPreviousRow(pins);
    // }


    componentDidMount(){
        this.props.fetchPins()
            .then(() => this.newRow(this.props.pins.slice(0,this.state.numCols)));
        this.props.fetchUserBoards();

    }

    setPreviousRow(pins){
        if(pins.length > 0){
            for(let i=0; i < this.state.numCols; i++){
                const pinId = pins[i].id; 
                const pin = document.getElementById(pinId);
            
                const pinHeight = pin.offsetHeight;
                this[`col${i+1}`] += pinHeight;
              
            }
            console.log(this.col1, this.col2, this.col3, this.col4);
        }
    } 

    newRow(pins){
        const boards = this.props.boards;
        
        let pinArray = []; 
        let x = 0;

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
        this.setState({
            pins: [...this.state.pins, ...pinArray]
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


    render(){
        console.log("render")
        console.log(this.col1, this.col2, this.col3, this.col4)
        const boards = this.props.boards
        const pins = this.props.pins
        const numCols = this.state.numCols

        const previousRowStart = this.state.pins.length - numCols;
        const previousRowend = this.state.pins.length; 
        const newRowEnd = this.state.pins.length + numCols; 

        return(
            <div className="pin-preview-container"> 
                <div className="pin-grid">
                { this.state.pins.length > 0 ? this.state.pins.map(pin => (
                    pin
                )) : null }
                </div>
                
                <button style={{position: 'fixed', top: '200px', left: '10px'}} onClick={() => this.setPreviousRow(pins.slice(previousRowStart,previousRowend))}>first</button>
                <button style={{position: 'fixed', top: '200px', left: '80px'}} onClick={() => this.newRow(pins.slice(previousRowend,newRowEnd))}>second</button>

            </div>
        )
    }
}

export default PinGrid; 