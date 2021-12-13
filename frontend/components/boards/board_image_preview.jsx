import React from 'react';


class BoardImagePreview extends React.Component {
  constructor(props){
    super(props)
  }

  render(){

    if(this.props.pins) {
      const pins = this.props.pins; 
      
      return(
          <div className="board-image-container">
            {
              pins[0].photoUrl ? <img className="left-board-display-image" src={pins[0].photoUrl} /> : <h1 className="left-board-display-image"></h1>
            }
            <div className="right-images">
            {
              pins[1] && pins[1].photoUrl ? <img className="right-top-board-display-image" src={pins[1].photoUrl} /> : <h1 className="right-top-board-display-image"></h1>
            }
            {
              pins[2] && pins[2].photoUrl ? <img className="right-bottom-board-display-image" src={pins[2].photoUrl} /> : <h1 className="right-bottom-board-display-image"></h1>
            }
            </div>
          </div>
      )
    } else {
      return(
          <div className="board-image-container">
            <div className="left-board-display-image" ></div>
            <div className="right-images">
            <div className="right-top-board-display-image"></div>
            <div className="right-bottom-board-display-image"></div> 
            </div>
          </div>
      )
    }}
  
}

export default BoardImagePreview