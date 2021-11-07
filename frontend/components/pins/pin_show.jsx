import React from 'react';

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
    console.log(this.props)

    const pin = this.props.pins[this.pinId]
    if (this.props.pins[this.pinId]){
      const pinOwner = pin.user
      return (
        <div className="pin-modal-conatiner">
          <div className="pin-modal">
            <img className="pin-detail-photo" src={pin.photoUrl}/>
            <div>
              <h1>{pin.title}</h1>
              {
                pin.details ? <h1>{pin.details}</h1> : null
              }
               <h1>{pinOwner.username}</h1>
               <button>Follow</button>
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