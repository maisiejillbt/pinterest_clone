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
          <button id="dd-button">Pin</button>
          <button id="dd-button">Board</button>
        </div>
      );
  }

  render() {
    const pins = this.props.pins.slice(0,15)
    const boards = this.props.boards
    if (pins.length > 6 ) {
      return(
      <div className="pin-index">
          <div className="create-button" onClick={() => this.hide()}>
            <h1>+</h1>
            { this.state.dropdownOpen ? this.dropdown() : null }
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