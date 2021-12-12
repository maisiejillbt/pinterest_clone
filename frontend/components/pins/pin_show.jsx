import React from 'react';
import BoardDropdownHeader from '../elements/board_dropdown_header';
import PinSave from '../elements/save_pin.js';
import { Link } from 'react-router-dom';
import BackButton from '../elements/back_button';



class PinShow extends React.Component{
  constructor(props){
    super(props);
    this.pinId = this.props.match.params.pinId;
    this.handleFollow = this.handleFollow.bind(this)
  }

  componentDidMount(){ 
    this.props.fetchUserBoards();
    this.props.fetchPin(this.pinId);
    this.props.fetchFollows();
  }

  setLink(pinId){
    let data = false;
    switch (pinId) {
      case 1315:
        data=[];
        data[0] = "https://maisiejillbt.github.io/Resume/"
        data[1] = "Portfolio"
        break;
      case 1316:
        data=[];
        data[0] = "https://www.linkedin.com/in/maisie-bruno-tyne-178a469a/";
        data[1] = "Linkedin"
        break;
      case 1317:
        data=[];
        data[0] = "https://github.com/maisiejillbt"
        data[1] = "GitHub"
        break;
      default:
        break;
    }
    return data;
  }

  handleFollow(currentUser, userToFollow) {
    const button = document.getElementById('follow-button');
    const follow = {
      follower_id: currentUser, 
      followed_id: userToFollow, 
      created_at: new Date(),
    }
    if (button.classList.contains("unfollow")) {
      button.classList.remove("unfollow");
      button.innerText = "Follow";
    }else{
      button.classList.add('unfollow');
      button.innerText = "Unfollow";
      this.props.createFollow(follow);
    }
  }

  handleUnfollow(followId){
    const button = document.getElementById('follow-button');
    if (button.classList.contains("unfollow")) {
      button.classList.remove("unfollow");
      // button.innerText = "Follow";
      this.props.deleteFollow(followId);
    }else{
      button.classList.add('unfollow');
      // button.innerText = "Unfollow";
    }

  }

  render(){
    const pin = this.props.pin
    const pinOwnerId = this.props.pin.user_id
    const followingUser = this.props.following.includes(pinOwnerId)
    const follow = this.props.follows.filter(follow => {return follow.followed_id === pinOwnerId})[0]
    const followId = follow ? follow.id : null
    const hasBoards = this.props.boards.length > 0 ? true : false;
    const firstBoardId = hasBoards ? this.props.boards[0].id : null;

    if (pin && this.props.current_user){
      const currentUserId = this.props.current_user.id;
      const pinOwner = pin.user
      const link = this.setLink(pin.id)
      return (
        <div className="pin-show">
          < BackButton /> 
          <div className="pin-modal">
            <div className="pin-photo-container">
              <img className="photo" src={pin.photoUrl}/>
            </div>
            <div className="pin-detail">
              <div>
                <div className="top">
                  {
                    hasBoards ? 
                      < BoardDropdownHeader userBoards={this.props.boards} pin={pin} color={"black"} />
                    : 
                     <div className="board-dropdown-header"><h1 style={{color: 'black'}} className="board-dropdown-header-text">Create a board first</h1></div> 
                  }

                  { 
                    hasBoards ? <button onClick={() => PinSave(pin.id, firstBoardId)} className="save-button">Save</button> : null
                  }

                </div>

                <h1 className="title">{pin.title}</h1>
                {
                  pin.description ? <h3>{pin.description}</h3> : null
                }
                {
                  link ? <a id="portfolioLink" href={link[0]}>View my {link[1]} here!</a> : null
                }
              </div>

              <div className="pin-owner">

                <Link to={pinOwner ? `/users/${pinOwner.id}` : '/pins'}><div className="left">
                  <img src={window.avatar_blue}/>
                  {
                    pinOwner ? <h1 className="name">{pinOwner.username}</h1> : null
                  }
                </div>
                </Link>
                {
                  followingUser ? 

                  <button id="follow-button" onClick={() => this.handleUnfollow(followId)} className="follow-button unfollow">Unfollow</button>
                  :
                  <button id="follow-button" onClick={() => this.handleFollow(currentUserId, pinOwnerId)} className="follow-button">Follow</button>
                }
              </div>

            </div>
          </div>
        </div>
    )
    }else{
      return(
        <div></div>
      )
    }
  }
}

export default PinShow; 