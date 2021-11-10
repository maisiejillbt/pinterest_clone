import React from 'react'; 
import PinSave from './save_pin.js'

const BoardDropdownItem = (props) => {
  console.log(props)
  return(
    <div className="dropdown-item">
      <div className="left">
        {props.board.pins[0] && props.board.pins[0].photoUrl ? <img className="board-image" src={props.board.pins[0].photoUrl}/> : <div className="board-image"></div>}
        <h1>{props.board.name}</h1>
      </div>
      <button onClick={()=>PinSave(props.pinId, props.board.id)} className="save-button">Save</button>
    </div>
  )
}

export default BoardDropdownItem