import React from 'react';
import Pin from './pin'

class PinIndex extends React.Component {
  constructor(props){
    super(props)
  }

  componentDidMount(){
    this.props.fetchPins();
  }

  render() {
    const pins = this.props.pins
    return(
      <div className="board-preview-container"> 
        <div className="pin-grid">
        {
          pins.map((pin) => (
            <Pin pin={pin} key={pin.id}/>
          ))
        }
        </div>
      </div>
    )

  }
}

export default PinIndex