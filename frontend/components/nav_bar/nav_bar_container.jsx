import React from 'react';
import { connect } from 'react-redux';
import NavBar from './navBar';

import { logoutUser } from '../../actions/session';

const mstp = state => ({
  currentUser: state.session.currentUser,
});

const mdtp = dispatch => ({
  logoutUser: () => dispatch(logoutUser()),
});

export default connect(mstp, mdtp)(NavBar)