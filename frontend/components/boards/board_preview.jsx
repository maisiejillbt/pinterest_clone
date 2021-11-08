import React from 'react';
import BoardImagePreview from './board_image_preview'

class BoardPreview extends React.Component {
  constructor(props){
    super(props)
  }

  render() {
    const board = this.props.board
    const pins = board.pins.length > 0 ? board.pins.slice(0,3) : null

    return(
      <div key={board.id} className="board-container">
        <BoardImagePreview pins={pins}/>
        <h1 className="board-preview-name">{board.name}</h1>
        <h1 className="small-grey-type">{board.pins.length} Pins</h1>
      </div>
    )
  }
}

export default BoardPreview