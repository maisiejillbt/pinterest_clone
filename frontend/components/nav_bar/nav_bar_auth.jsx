import React from 'react';
import { Link } from 'react-router-dom';

class NavBarAuth extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      current_user: this.props.current_user
    }
    // this.current_user = this.props.current_user
    // this.current_user.avatar = ""
  }
  
  assignAvatar(){
    const avatars = [
      window.avatar_blue,
      window.avatar_green,
      window.avatar_dkgreen,
      window.avatar_gold,] 
    const avatar = avatars[Math.floor(Math.random() * avatars.length)]
    this.current_user.avatar = avatar;
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