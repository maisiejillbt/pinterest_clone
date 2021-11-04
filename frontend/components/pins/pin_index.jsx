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
      <div> 
        {
          pins.map((pin) => (
            <Pin pin={pin} key={pin.id}/>
          ))
        }
      </div>
    )

  }
}

export default PinIndex