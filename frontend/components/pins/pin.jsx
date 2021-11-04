import React from 'react';

class Pin extends React.Component {
  constructor(props){
    super(props)
  }

  render() {
    const pin = this.props.pin
    return(
      <div>
        {pin.photoUrl ? <img src={pin.photoUrl}/> : <h1>Image goes here</h1>}
        <h1>{pin.title}</h1>
      </div>
    )
  }
}

export default Pin