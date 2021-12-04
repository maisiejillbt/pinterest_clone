import React from 'react';
import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom'
import NavBarProtected from './nav_bar_protected';

import { logoutUser } from '../../actions/session';

const mstp = state => ({
  current_user: state.session.current_user
});

const mdtp = dispatch => ({
  logoutUser: () => dispatch(logoutUser()),
});

export default withRouter(connect(mstp, mdtp)(NavBarProtected));