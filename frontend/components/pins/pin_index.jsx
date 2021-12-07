import React from 'react';
import Pin from './pin'
import { Link } from 'react-router-dom';
import CreateBoardContainer from '../boards/create_board_form_container';
import PinGridContainer from './pin_grid_container';


class PinIndex extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      dropdownOpen: false,
      modalOpen: false, 
    };

    this.close = this.close.bind(this);
    this.closeModal = this.closeModal.bind(this);
    this.toggle = this.toggle.bind(this);
  }

  // componentDidMount(){
  //   this.props.fetchPins();
  //   this.props.fetchUserBoards();
  // }

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
    )
  }

  boardModal(){
    return(
      < CreateBoardContainer closeModal={this.closeModal}/> 
    )
  }

  render() {
    // const pins = this.props.pins.slice(0,15)
    // const boards = this.props.boards
    // if (pins.length > 6 ) {
      return(
        <div className="pin-index">
            <div className="create-button" onClick={() => this.toggle("dropdown")}>
              <h1>+</h1>
              { this.state.dropdownOpen ? this.dropdown() : null }
            </div>

            < PinGridContainer/> 

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
    // }else{ 
    //   return null 
    // }

  }
}

export default PinIndex