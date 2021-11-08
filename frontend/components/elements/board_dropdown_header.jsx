import React from 'react'
import BoardDropdown from './board_dropdown'

const BoardDropdownHeader = (props) => {
  const color = props.color
  const chevron = color == "black" ? window.chevron_black : window.chevron_white
  const firstBoardName = props.userBoards[0].name
  const dropdownText = (firstBoardName.length > 10) ? firstBoardName.slice(0,10) + '  ...' : firstBoardName;
  return (
    <div className="board-dropdown-header">
      <h1 className="board-dropdown-header-text">{dropdownText}</h1>
      <img className="board-chevron" src={chevron}/>
      < BoardDropdown boards={props.userBoards}/>
    </div>
  )
}

export default BoardDropdownHeader