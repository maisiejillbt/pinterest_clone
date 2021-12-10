import React from 'react';
import BoardPreview from '../boards/board_preview'
import { Link } from 'react-router-dom';
import CreateBoardContainer from '../boards/create_board_form_container';


class UserShow extends React.Component {
  constructor(props){
    super(props); 
    this.state = {
      userId: this.props.match.params.userId,
      dropdownOpen: false,
      modalOpen: false,
    }
    this.dropdownTimeout;
    this.close = this.close.bind(this);
  }

  componentDidMount(){
    this.props.fetchUser(this.props.match.params.userId);
  }

  componentDidUpdate(){
    const { dropdownOpen } = this.state;

    this.dropdownTimeout = setTimeout(() => {
      if(dropdownOpen){
        window.addEventListener('click', this.close);
      }
      else{
        window.removeEventListener('click', this.close);
      }
    }, 0);
  }

  componentWillUnmount(){
    clearTimeout(this.dropdownTimeout);
  }

  close(){
    {
      this.setState({
        dropdownOpen: false,
      });
    }
  }

  closeModal(){
    this.setState({
      modalOpen: false,
    });
  }

  toggle(element){
    switch (element) {
      case "dropdown":
        this.setState(prevState => ({
          dropdownOpen: !prevState.dropdownOpen
        }));
        break;
      case "modal":
        this.setState(prevState => ({
          modalOpen: !prevState.modalOpen
        }));
        break;
      default:
        break;
    }
  }

  dropdown(){
      return(
        <div id="create-dropdown" className="dropdown">
          <h2 className="create">Create</h2>
          <Link to="/create-pin"><button id="dd-button">Pin</button></Link>
          <button id="dd-button" onClick={() => this.toggle("modal")}>Board</button>
        </div>
      );
  }

  boardModal(){
    return(
      < CreateBoardContainer closeModal={this.closeModal} /> 
    )
  }

  render() {
    const userId = this.props.match.params.userId
    if (Object.keys(this.props.user).length > 0 && this.props.current_user) {
      const boards = this.props.user.boards
      return(
        <div className="profile-container">
          <div className="user-info">
            <div className="avatar-container">
              { this.props.photoUrl ? <img src={this.props.photoUrl}/> : <img src={window.avatar_green} alt="" /> }
            </div>
            <h1>{this.props.user.name}</h1>
            <h2>@{this.props.user.username}</h2>
            {this.props.userId === this.props.current_user.id ? <button className="edit-profile">Edit Profile</button> : null}
            
            <div className="create-button" onClick={() => this.toggle("dropdown")}>
              <h1>+</h1>
              { this.state.dropdownOpen ? this.dropdown() : null }
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
          {this.state.modalOpen ? 
            <div className="board-form-container">
              <button className="back-button" onClick={() => this.closeModal()}> 
                <img src={window.backButton} alt="back" />
              </button>
              {this.boardModal()}
            </div>
          : null }
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
