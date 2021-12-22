import React from 'react';
import { connect } from 'react-redux';
import NavBarAuth from './nav_bar_auth';

import { logoutUser } from '../../actions/session';

const mstp = state => ({
  current_user: state.session.current_user, 
  errors: state.errors
});

export default connect(mstp)(NavBarAuth)