import React from 'react'
import ReactDOM from 'react-dom';
import BoardDropdown from './board_dropdown'

class BoardDropdownHeader extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      dropdownOpen: false, 
    }
    
    this.close = this.close.bind(this);
    this.dropdownTimeout;

    this.color = this.props.color;
    this.chevron = this.color == "black" ? window.chevron_black : window.chevron_white;
    this.firstBoardName = props.userBoards[0].name;
    this.dropdownText = (this.firstBoardName.length > 10) ? this.firstBoardName.slice(0,10) + '  ...' : this.firstBoardName;
  }

  componentDidUpdate(){
    const { dropdownOpen } = this.state;
    const pin = document.getElementById(this.props.pin.id);

    if(!dropdownOpen && pin){
      pin.style.zIndex = "1"
    };

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
    return (
      <BoardDropdown boards={this.props.userBoards} pinId={this.props.pin.id} />
    );
  }

  render(){
    return (
      <div id="board-dropdown-header" className="board-dropdown-header" onClick={()=> this.toggleDropdown()}>
        <h1 className="board-dropdown-header-text">{this.dropdownText}</h1>
        <img className="board-chevron" src={this.chevron}/>
        {this.state.dropdownOpen ? this.dropdown() : null}
      </div>
    );
  }
}

export default BoardDropdownHeader; 