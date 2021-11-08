import React from 'react';
import BoardPreview from './board_preview'
import Pin from '../pins/pin'

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
                <img className="more-info" src={window.more_info}/>
                <div className="board-show-dropdown">

                </div>
              </div>
              
            </div>

            <img className="board-owner-image" src={this.props.current_user.avatar}/>
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