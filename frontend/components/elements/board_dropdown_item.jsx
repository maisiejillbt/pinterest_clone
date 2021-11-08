import React from 'react'; 

const BoardDropdownItem = (props) => {
  
  console.log(props.board.pins[0].photoUrl);

  return(
    <div className="dropdown-item">
      {props.board.pins[0].photoUrl ? <img className="board-image" src={props.board.pins[0].photoUrl}/> : <div className="board-image"></div>}
      <h1>{props.board.name}</h1>
      <button className="save-button">Save</button>
    </div>
  )
}

export default BoardDropdownItem