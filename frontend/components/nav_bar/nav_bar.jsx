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

  const hide = () => {
    const dropdown = document.getElementById('dropdown');
    if(dropdown.classList.contains("hide")){
      dropdown.classList.remove("hide");
    }else{
      dropdown.classList.add("hide")
    }
  }

  const display = () => {
    if (current_user) {
      assignAvatar();

      return (
      <div className="RightHeader">
        <img className="icon" src={window.bell}/>
        <img className="icon" src={window.message_bubble}/>
        <Link to="/boards"><img id="avatar" className="icon" src={current_user.avatar}/></Link>
        <img className="chevron" src={window.chevron} onClick={() => hide()}/>
        <div id="dropdown" className="dropdown hide">
          <h1>Settings</h1>
          <button className="dd-button" onClick={logoutUser}>Logout</button>
        </div>
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
    <header className="nav-bar">
      <div className="LeftHeader">
      <Link to="/pins"><img className="MainLogo" src={window.main_logo} alt="main-logo"/></Link>
      </div>
      {display()}
    </header>
  )
};

export default NavBar; 