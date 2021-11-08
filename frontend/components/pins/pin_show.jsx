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
  }

  render(){
    const pin = this.props.pins[this.pinId]
    if (this.props.boards[0] && pin ){
      const pinOwner = pin.user
      console.log(pinOwner)
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
                <button className="follow-button">Follow</button>
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