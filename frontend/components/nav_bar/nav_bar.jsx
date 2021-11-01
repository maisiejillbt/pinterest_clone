import React from 'react';
import { Link } from 'react-router-dom';


const NavBar = ({ currentUser, logoutUser }) => {
  const display = (
    <div>
      <Link className="btn" to="/signup">Sign Up</Link>
      <Link className="btn" to="/login">Log In</Link>
    </div>
  );

  return (
    <header>
    <div className="LeftHeader">
      <h1>LOGO</h1>
    </div>
    
    </header>
  )


};

export default NavBar; 