import React from 'react'
import ReactDOM from 'react-dom';
import BoardDropdown from './board_dropdown'

const BoardDropdownHeader = (props) => {
  const color = props.color
  const chevron = color == "black" ? window.chevron_black : window.chevron_white
  const firstBoardName = props.userBoards[0].name
  const dropdownText = (firstBoardName.length > 10) ? firstBoardName.slice(0,10) + '  ...' : firstBoardName;
  
  const hide = () => {
    const dropdownEl = <BoardDropdown boards={props.userBoards} pinId={props.pin.id} />
    const dropdownHeader = document.getElementById('board-dropdown-header');

    ReactDOM.render(dropdownEl, dropdownHeader);

    const dropdown = document.getElementById('boardDropdown');

    if(dropdown.classList.contains("hide")){
      dropdown.classList.remove("hide");
    }else{
      dropdown.classList.add("hide")
    }
  }

  return (
    <div id="board-dropdown-header" className="board-dropdown-header" onClick={()=>hide()}>
      <h1 className="board-dropdown-header-text">{dropdownText}</h1>
      <img className="board-chevron" src={chevron}/>
    </div>
  )
}

export default BoardDropdownHeader