import React from 'react';
import BoardPreview from './board_preview'
import Pin from '../pins/pin'
import { Link } from 'react-router-dom';

class BoardShow extends React.Component {
  constructor(props){
    super(props)
  }

  componentDidMount(){
    this.props.fetchUserBoards();
    this.props.fetchBoard(this.props.match.params.boardId);
  }

  render() {
    const boards = this.props.boards
    if(this.props.boards.length > 1){
      const currentBoard = boards.filter(board => board.id == this.props.match.params.boardId)[0];
      const currentUserBoards = boards.filter(board => board.user_id == this.props.current_user.id)
      return(
        <div className="board-show-container">
          <div className="board-info-container">
            <div className="board-show-header">
              <h1 className="board-name">{currentBoard.name}</h1>
              <div className="overlay">
                <Link to={`/boards/${this.props.match.params.boardId}/edit`}><button className="edit-board"><h1>...</h1></button></Link>
                <div className="board-show-dropdown">
                
                </div>
              </div>
            </div>

            <img className="board-owner-image" src={window.avatar_blue}/>
            {
              currentBoard.details ? <h2>{currentBoard.details}</h2> : null
            }
            <h1 className="pin-count">{currentBoard.pins.length + " Pins"}</h1>
          </div>


          <div className="pin-preview-container"> 
            <div className="pin-grid">
            {
              currentBoard.pins.map(pin => 
                <Pin pin={pin} key={pin.id} boards={currentUserBoards}/>
              )
            }
            </div>
          </div>
        
        </div>
      )
    }else {
      return(
        <div></div>
      )
    }
  }
}

export default BoardShow