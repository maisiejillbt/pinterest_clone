import React from 'react';
import Pin from './pin'
import { Link } from 'react-router-dom'; 

class PinGrid extends React.Component {
    constructor(props){
        super(props); 
        this.state = {
            firstRowLoaded: false, 
            numRows: NaN,
            row1: false, 
            row2: false, 
            row3: false, 
            row4: false, 
            row5: false, 
            row6: false, 
            row7: false, 
        }
        this.setNumColumns = this.setNumColumns.bind(this);


        window.addEventListener('resize', this.setNumColumns);
    }

    componentDidMount(){
        this.props.fetchPins();
        this.props.fetchUserBoards();
        this.setNumColumns();
    }

    getColumnHeight(){

    }

    setFirstRow(){

    }

    setNumColumns(){
        const w = window.innerWidth;
        let r = 0; 
        if(w <= 504){
            r = 1; 
        }else if(w >= 505 && w <= 757){
            r = 2; 
        }else if(w >= 758 && w <= 1008){
            r = 3; 
        }else if(w >= 1009 && w <= 1260){
            r = 4; 
        }else if(w >= 1261 && w <= 1512){
            r = 5; 
        }else if(w >= 1513 && w <= 1764){
            r = 6; 
        }else if(w >= 1764){
            r = 7; 
        }

        this.setState({
            numRows: r,
        })
    }

    render(){
        console.log(this.state.numRows)
        const pins = this.props.pins.slice(0,15)
        const boards = this.props.boards
        return(
            <div className="pin-preview-container"> 
                <div className="pin-grid">
                {
                    pins.map((pin) => (
                    <Pin pin={pin} key={pin.id} boards={boards} toggle={this.toggle}/>
                    ))
                }
                </div>
            </div>
        )
    }
}

export default PinGrid; 