import React from 'react';
import { Link } from 'react-router-dom';

class NavBarProtected extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      current_user: this.props.current_user, 
      dropdownOpen: false,
    }
  }
  
  toggleDropdown(){
    this.setState(prevState => ({
        dropdownOpen: !prevState.dropdownOpen
    }));
  }

  dropdown(){
      return(
        <div id="nav-dropdown" className="nav-dropdown">
            <h1 id="settings-button">Settings</h1>
            <button id="logout-button" onClick={this.props.logoutUser}>Log out</button>
        </div>
      );
  }

  rightHeader(){
    return (
        <div className="RightHeader">
            <img className="icon" src={window.bell}/>
            <img className="icon" src={window.message_bubble}/>
            <Link to={`/users/${this.props.current_user.id}`}><img id="avatar" className="icon" src={window.avatar_blue}/></Link>
            <img className="chevron" src={window.chevron} onClick={() => this.toggleDropdown()}/>
            { this.state.dropdownOpen ? this.dropdown() : null }
        </div>
    );
  }

  render() {
    return (
      <header className="nav-bar">
        <div className="LeftHeader">
        <Link to="/pins"><img className="MainLogo" src={window.main_logo} alt="main-logo"/></Link>
        </div>
        {this.rightHeader()}
      </header>
    )
  }

};

export default NavBarProtected; 