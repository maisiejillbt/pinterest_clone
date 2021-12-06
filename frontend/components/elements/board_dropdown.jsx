import React from "react"; 
import BoardDropdownItem from './board_dropdown_item'


const BoardDropdown = (props) => {

  const boards = props.boards
  return(
    <div id="boardDropdown" className="board-dropdown">
      {
        boards.map(board => <BoardDropdownItem key={board.id} pinId={props.pinId} board={board} />)
      }
    </div>
  )
}

export default BoardDropdown; 