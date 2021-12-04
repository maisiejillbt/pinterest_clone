import React from 'react';
import Pin from './pin'
import { Link } from 'react-router-dom';

class PinIndex extends React.Component {
  constructor(props){
    super(props)
  }

  componentDidMount(){
    this.props.fetchPins();
    this.props.fetchUserBoards();
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
    const pins = this.props.pins.slice(0,15)
    const boards = this.props.boards
    if (pins.length > 6 ) {
      return(
      <div className="pin-index">
          <div className="create-button" onClick={() => this.hide()}>
            <h1>+</h1>
            <div id="create-dropdown" className="dropdown hide">
              <h2 className="create">Create</h2>
              <Link to="/create-pin"><button id="dd-button">Pin</button></Link>
              <button id="dd-button">Board</button>
            </div>
          </div>

        <div className="pin-preview-container"> 
          <div className="pin-grid">
          {
            pins.map((pin) => (
              <Pin pin={pin} key={pin.id} boards={boards}/>
            ))
          }
          </div>
        </div>
      </div>
    )}else{ 
      return null 
    }

  }
}

export default PinIndex