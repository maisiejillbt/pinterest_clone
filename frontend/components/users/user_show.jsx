import React from 'react';
import BoardPreview from '../boards/board_preview'

class UserShow extends React.Component {
  constructor(props){
    super(props)
  }

  componentDidMount(){
    this.props.fetchUser(this.props.match.params.userId);
  }

  render() {

    const userId = this.props.match.params.userId
    if (Object.keys(this.props.user).length > 0) {

      const boards = this.props.user[userId].boards
      console.log(boards)
      return(
        <div className="profile-container">
          <div className="user-info">
            <h1>Photo</h1>
            <h1>username</h1>
          </div>
          
          <div className="board-preview-container">
            <div className="board-grid">
              {
                boards.map((board) => (
                  <BoardPreview board={board[Object.keys(board)]} key={board[Object.keys(board)]}/>
                ))
              }
            </div>
          </div>
        </div>
        )
    }else{
      return (
        <div></div>
      )
    }
  }
}

export default UserShow
