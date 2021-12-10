import React from 'react';
import { connect } from 'react-redux';
import NavBarAuth from './nav_bar_auth';

import { logoutUser } from '../../actions/session';

const mstp = state => ({
  current_user: state.session.current_user 
  /// Might end up getting rid of this constructor all together 
});

export default connect(mstp)(NavBarAuth)