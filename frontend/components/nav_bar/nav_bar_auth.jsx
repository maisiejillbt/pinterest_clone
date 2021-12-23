import React from 'react';
import { Link } from 'react-router-dom';

class NavBarAuth extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      current_user: this.props.current_user 
      // going to have to come back to this, this might end up becoming
      // a display element 
    }
  }

  display(){
      return(
        <div className="RightHeader">
            <div className="login-button">
            <Link to="/login">
                <h1>Log In</h1>
            </Link>
            </div>
            <div className="signup-button">
            <Link to="/signup">
                <h1>Sign Up</h1>
            </Link>
            </div>
        </div>
      )
  };

  render() {
    return (
      <header className="nav-bar">
        <div className="LeftHeader">
        <img className="MainLogo" src={window.main_logo} alt="main-logo"/>
        </div>
        {this.display()}
      </header>
    )
  }

};

export default NavBarAuth; 