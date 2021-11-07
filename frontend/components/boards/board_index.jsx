import React from 'react';
import Board from './board'

class BoardIndex extends React.Component {
  constructor(props){
    super(props)
  }

  componentDidMount(){
    this.props.fetchUserBoards();
  }

  render() {
    const boards = this.props.boards 
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