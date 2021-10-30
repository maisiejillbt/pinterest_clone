import React from 'react';
import { Link } from 'react-router-dom';

export default ({ currentUser, logout }) => {
  return (
    <div>
      <Link className="btn" to="/signup">Sign Up</Link>
      <Link className="btn" to="/login">Log In</Link>
    </div>
  );
};