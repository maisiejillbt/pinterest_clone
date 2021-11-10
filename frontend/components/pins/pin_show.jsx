import React from 'react';
import BoardDropdownHeader from '../elements/board_dropdown_header';

class PinShow extends React.Component{
  constructor(props){
    super(props);
    this.pinId = this.props.match.params.pinId;
  }

  componentDidMount(){ 
    this.props.fetchUserBoards();
    this.props.fetchPin(this.pinId);
    this.props.fetchFollows();
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

  render(){
    console.log(this.props)
    const pin = this.props.pin
    const currentUserId = this.props.current_user.id;
    const pinOwnerId = this.props.pin.user_id
    if (this.props.boards[0] && pin ){
      const pinOwner = pin.user
      return (
        <div className="pin-show">
          <div className="pin-modal">
            <div className="pin-photo-container">
              <img className="photo" src={pin.photoUrl}/>
            </div>
            <div className="pin-detail">
              <div>
                <div className="top">
                  < BoardDropdownHeader userBoards={this.props.boards} pin={pin} color={"black"} />
                  <button className="save-button">Save</button>
                </div>

                <h1 className="title">{pin.title}</h1>
                {
                  pin.details ? <h1>{pin.details}</h1> : null
                }
              </div>

              <div className="pin-owner">
                <div className="left">
                  <img src={window.avatar_blue}/>
                  {
                    pinOwner ? <h1 className="name">{pinOwner.username}</h1> : null
                  }
                </div>
                <button id="follow-button" onClick={() => this.handleFollow(currentUserId, pinOwnerId)} className="follow-button">Follow</button>
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