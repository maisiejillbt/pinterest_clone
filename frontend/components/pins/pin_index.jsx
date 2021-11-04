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
    // console.log(typeof(pins))
    console.log(pins[166])
    console.log(pins[16])

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