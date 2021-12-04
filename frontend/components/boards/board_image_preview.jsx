import React from 'react';


class BoardImagePreview extends React.Component {
  constructor(props){
    super(props)
  }

  render(){

    if(this.props.pins) {
      const pins = this.props.pins
      console.log(pins)
      
      return(
          <div className="board-image-container">
            {
              pins[0].photoUrl ? <img className="left-board-display-image" src={pins[0].photoUrl} /> : <h1 className="left-board-display-image">Photo goes here</h1>
            }
            <div className="right-images">
            {
              pins[1] && pins[1].photoUrl ? <img className="right-top-board-display-image" src={pins[1].photoUrl} /> : <h1 className="right-top-board-display-image">Photo goes here</h1>
            }
            {
              pins[2] && pins[2].photoUrl ? <img className="right-bottom-board-display-image" src={pins[2].photoUrl} /> : <h1 className="right-bottom-board-display-image">Photo goes here</h1>
            }
            </div>
          </div>
      )
    } else {
      return(null)
    }}
  
}

export default BoardImagePreview