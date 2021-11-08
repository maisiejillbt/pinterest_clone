import React from 'react'; 

const BoardDropdownItem = (props) => {

  return(
    <div className="dropdown-item">
      <div className="left">
        {props.board.pins[0].photoUrl ? <img className="board-image" src={props.board.pins[0].photoUrl}/> : <div className="board-image"></div>}
        <h1>{props.board.name}</h1>
      </div>

      <button className="save-button">Save</button>
    </div>
  )
}

export default BoardDropdownItem