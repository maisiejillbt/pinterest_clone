import React from 'react';
import Board from './board'

class BoardIndex extends React.Component {
  constructor(props){
    super(props)
  }

  componentDidMount(){
    this.props.fetchBoards();
  }

  render() {
    const boards = this.props.boards 
    console.log(boards)
    return(
      <div className="board-preview-container">
      <div className="board-grid"> 
        {
          boards.map((board) => (
            <Board board={board.board} key={board.board.id}/>
          ))
        }
      </div>
      </div>
    )
  }
}

export default BoardIndex