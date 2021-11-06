import React from 'react';
import Pin from './pin'

class PinIndex extends React.Component {
  constructor(props){
    super(props)
  }

  componentDidMount(){
    this.props.fetchPins();
    this.props.fetchUserBoards();
  }

  render() {
    const pins = this.props.pins 
    const boards = this.props.boards
    return(
      <div className="pin-preview-container"> 
        <div className="pin-grid">
        {
          pins.map((pin) => (
            <Pin pin={pin} key={pin.id} boards={boards}/>
          ))
        }
        </div>
      </div>
    )

  }
}

export default PinIndex