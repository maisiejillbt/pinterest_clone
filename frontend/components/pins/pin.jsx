import React from 'react';
import { Link } from 'react-router-dom';
import BoardDropdownHeader from '../elements/board_dropdown_header'
import PinSave from '../elements/save_pin.js'

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
    const hasBoards = this.props.boards.length > 0 ? true : false;
    const firstBoardName = hasBoards ? boards[0].name : null 
    const dropdownText = (hasBoards && firstBoardName.length > 10) ? firstBoardName.slice(0,10) + '  ...' : firstBoardName;
    const firstBoardId = boards[0].id
    return(


      <div className="pin-container">
        {pin.photoUrl ? 
        <div className="pin-image-container">
          <Link to={`/pins/${pin.id}`}><img className="pin-image" src={pin.photoUrl}/></Link>
          {
            hasBoards ? 
              <BoardDropdownHeader userBoards={boards} pin={this.props.pin} color={"white"} /> 
              : 
              <div className="board-dropdown-header"><h1 className="board-dropdown-header-text">Create a board first</h1></div>
          }
          <button onClick={() => PinSave(pin.id, firstBoardId)} className="save-button">Save</button>

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