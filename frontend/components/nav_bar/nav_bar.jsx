import React from 'react';
import { Link } from 'react-router-dom';


const NavBar = ({ current_user, logoutUser }) => {

  const assignAvatar = () => {
    const avatars = [
      window.avatar_blue,
      window.avatar_green,
      window.avatar_dkgreen,
      window.avatar_gold]; 
    const avatar = avatars[Math.floor(Math.random() * avatars.length)]
    current_user.avatar = avatar;
  }

  const display = () => {
    if (current_user) { 
      assignAvatar();
      return (
      <div className="RightHeader">
        <h1>BELL</h1>
        <h1>DMS</h1>
        <h1>DD</h1>
        <img id="avatar" src={current_user.avatar}/>
        <button onClick={logoutUser}>Logout</button>
      </div>
      )
    }else{ 
      return(
      <div className="RightHeader">
        <Link to="/signup">Sign Up</Link>
        <Link to="/login">Log In</Link>
      </div>)
    }
  };

  return (
    <header>
      <div className="LeftHeader">
      <Link to="/"><img className="MainLogo" src={window.main_logo} alt="main-logo"/></Link>
      </div>
      {display()}
    </header>
  )
};

export default NavBar; 