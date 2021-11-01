import React from 'react';
import { Link } from 'react-router-dom';


const NavBar = ({ current_user, logoutUser }) => {
  console.log(current_user)
  const display = current_user ? (
    <div>
      <h1>BELL</h1>
      <h1>DMS</h1>
      <h1>DD</h1>
      <button onClick={logoutUser}>Logout</button>
    </div>

  ) : (
    <div>
      <Link to="/signup">Sign Up</Link>
      <Link to="/login">Log In</Link>
    </div>
  );

  return (
    <header>
      <div className="LeftHeader">
        <h1>LOGO</h1>
      </div>
      {display}
    </header>
  )
};

export default NavBar; 