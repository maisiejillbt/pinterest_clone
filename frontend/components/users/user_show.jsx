import React from 'react';
import BoardPreview from '../boards/board_preview'

class UserShow extends React.Component {
  constructor(props){
    super(props)
  }

  componentDidMount(){
    this.props.fetchUser(this.props.match.params.userId);
  }

  hide() {
    const dropdown = document.getElementById('create-dropdown');
    if(dropdown.classList.contains("hide")){
      dropdown.classList.remove("hide");
    }else{
      dropdown.classList.add("hide")
    }
  }

  render() {
    const userId = this.props.match.params.userId
    console.log(this.props.photoUrl)
   
    if (Object.keys(this.props.user).length > 0) {

      const boards = this.props.user.boards
      return(
        <div className="profile-container">
          <div className="user-info">
            <div className="avatar-container">

              { this.props.photoUrl ? <img src={this.props.photoUrl}/> : <img src={window.avatar_green} alt="" /> }
            </div>
            <h1>{this.props.user.name}</h1>
            <h2>@{this.props.user.username}</h2>
            <button className="edit-profile">Edit Profile</button>
          </div>

          <div className="create-button" onClick={() => this.hide()}>
            <h1>+</h1>
            <div id="create-dropdown" className="dropdown hide">
              <h2 className="create">Create</h2>
              <button className="dd-button">Pin</button>
              <button className="dd-button">Board</button>
            </div>
          </div>

          <div className="board-preview-container">
            <div className="board-grid">
              {
                boards.map((board) => (
                  <BoardPreview board={board[Object.keys(board)]} key={board[Object.keys(board)].id}/>
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
