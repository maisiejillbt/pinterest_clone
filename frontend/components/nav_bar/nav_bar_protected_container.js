import React from 'react';
import { connect } from 'react-redux';
import NavBarProtected from './nav_bar_protected';

import { logoutUser } from '../../actions/session';

const mstp = state => ({
  current_user: state.session.current_user
});

const mdtp = dispatch => ({
  logoutUser: () => dispatch(logoutUser()),
});

export default connect(mstp, mdtp)(NavBarProtected);