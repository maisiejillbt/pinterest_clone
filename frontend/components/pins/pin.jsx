import React from 'react';
class Pin extends React.Component {
  constructor(props){
    super(props)
  }

//   function printMousePos(event) {
//   document.body.textContent =
//     "clientX: " + event.clientX +
//     " - clientY: " + event.clientY;
// }

  render() {
    const pin = this.props.pin
    const boards = this.props.boards
    const firstBoardName = boards[0].board.name
    const dropdownText = (firstBoardName.length > 10) ? firstBoardName.slice(0,10) + '  ...' : firstBoardName;
    return(
      <div className="pin-container">
        {pin.photoUrl ? 
        <div className="pin-image-container">
          <img className="pin-image" src={pin.photoUrl}/>

          <div className="pin-dropdown">
            <h1 className="pin-dropdown-text">{dropdownText}</h1>
            <img className="pin-chevron" src={window.chevron_white}/>
            {/* < PinDropdown boards={boards}/> */}
          </div>
          <button className="save-button">Save</button>
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