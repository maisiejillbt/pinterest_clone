import React from 'react';
import { Link } from 'react-router-dom';
import logo from "../../../app/assets/images/logos/intrestLogo.png"

const NavBar = ({ current_user, logoutUser }) => {
  const display = current_user ? (
    <div className="RightHeader">
      <h1>BELL</h1>
      <h1>DMS</h1>
      <h1>DD</h1>
      <button onClick={logoutUser}>Logout</button>
    </div>

  ) : (
    <div className="RightHeader">
      <Link to="/signup">Sign Up</Link>
      <Link to="/login">Log In</Link>
    </div>
  );

  return (
    <header>
      <div className="LeftHeader">
        <img src={logo}/> 
      </div>
      {display}
    </header>
  )
};

export default NavBar; 