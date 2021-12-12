import React from 'react';
import { Link } from 'react-router-dom';
import BoardDropdownHeader from '../elements/board_dropdown_header'
import PinSave from '../elements/save_pin.js'

class Pin extends React.Component {
  constructor(props){
    super(props)
  }

  render() {
    const pin = this.props.pin
    const boards = this.props.boards
    const hasBoards = this.props.boards.length > 0 ? true : false;
    const firstBoardName = hasBoards ? boards[0].name : null 
    const dropdownText = (hasBoards && firstBoardName.length > 10) ? firstBoardName.slice(0,10) + '  ...' : firstBoardName;
    const firstBoardId = boards[0] ? boards[0].id : null;
    return(
        <div id={pin.id} style={this.props.style} className="pin-container">
          {pin.photoUrl ? 
            <div className="pin-image-container">
              <Link to={`/pins/${pin.id}`}><img style={{backgroundColor: `${this.props.bgColor}`}} className="pin-image" onLoad={() => this.props.loaded(pin.id, this.props.column)} src={pin.photoUrl} alt={pin.title}/></Link>
              {
                hasBoards ? 
                  <BoardDropdownHeader userBoards={boards} pin={this.props.pin} color={"white"} /> 
                  : 
                  <div className="board-dropdown-header"><h1 className="board-dropdown-header-text">Create a board first</h1></div>
              }
              {
                firstBoardId ? 
                <button onClick={() => PinSave(pin.id, firstBoardId)} className="save-button">Save</button>
                : 
                <button className="save-button" onClick={() => this.props.toggle("modal")}>Board</button> 
              }
            </div>
          : 
            <div className="image-placeholder">
              
            </div>
          }
          <div className="pin-title">
            <a>{pin.title}</a>
          </div>
        </div>
    )
  }
}

export default Pin