import React from 'react';
import BoardImagePreview from './board_image_preview'

class Board extends React.Component {
  constructor(props){
    super(props)
  }

  render() {
    const board = this.props.board
    console.log(board)
    const pins = board.pins.length > 0 ? board.pins.slice(0,3) : null
    return(
      <div key={board.id} className="board-container">
        <BoardImagePreview pins={pins}/>
        <h1 className="board-name">{board.name}</h1>
        <h1 className="board-pin-count">{board.pins.length} Pins</h1>
      </div>
    )
  }
}

export default Board