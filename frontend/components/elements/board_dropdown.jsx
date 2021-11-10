import React from "react"; 
import BoardDropdownItem from './board_dropdown_item'


const BoardDropdown = (props) => {

  // console.log(props)
  const boards = props.boards
  return(
    <div id="boardDropdown" className="board-dropdown hide">
      {
        boards.map(board => <BoardDropdownItem key={board.id} pinId={props.pinId} board={board} />)
      }
    </div>
  )
}

export default BoardDropdown; 