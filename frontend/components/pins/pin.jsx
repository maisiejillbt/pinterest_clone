import React from 'react';
class Pin extends React.Component {
  constructor(props){
    super(props)
  }

  render() {
    const pin = this.props.pin
    return(
      <div className="pin-container">
        {pin.photoUrl ? 
        <div>
        <img className="pin-image" src={pin.photoUrl}/> 
        </div>
        : 
        <div className="image-placeholder">
          <h1>Image goes here</h1>
        </div>}
        <div className="pin-title">
          <a>{pin.title}</a>
        </div>
      </div>
    )
  }
}

export default Pin