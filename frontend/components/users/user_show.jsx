import React from 'react';
import BoardPreview from '../boards/board_preview'
import { Link } from 'react-router-dom';


class UserShow extends React.Component {
  constructor(props){
    super(props); 
    this.state = {
      userId: this.props.match.params.userId,
      dropdownOpen: false,
    }
    this.close = this.close.bind(this);
  }

  componentDidMount(){
    this.props.fetchUser(this.props.match.params.userId);
  }

  componentDidUpdate(){
    const { dropdownOpen } = this.state;

    setTimeout(() => {
      if(dropdownOpen){
        window.addEventListener('click', this.close);
      }
      else{
        window.removeEventListener('click', this.close);
      }
    }, 0);
  }

  close(){
    this.setState({
      dropdownOpen: false,
    });
  }

  toggleDropdown(){
    this.setState(prevState => ({
        dropdownOpen: !prevState.dropdownOpen
    }));
  }

  dropdown(){
      return(
        <div id="create-dropdown" className="dropdown">
          <h2 className="create">Create</h2>
          <Link to="/create-pin"><button id="dd-button">Pin</button></Link>
          <button id="dd-button">Board</button>
        </div>
      );
  }

  render() {
    console.log(this.state.dropdownOpen)
    const userId = this.props.match.params.userId
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

          <div className="create-button" onClick={() => this.toggleDropdown()}>
            <h1>+</h1>
            { this.state.dropdownOpen ? this.dropdown() : null }
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
