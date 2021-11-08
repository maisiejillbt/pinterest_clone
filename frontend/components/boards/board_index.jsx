import React from 'react';
import BoardPreview from './board_preview'

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
                  <BoardPreview board={board} key={board.id}/>
                ))
              }
            </div>
          </div>
        )
  }
}

export default BoardIndex