import React from 'react';
import { connect } from 'react-redux';
import { fetchUser } from '../../actions/users';

import UserShow from './user_show';

const mstp = (state) => ({
  user: state.entities.users,
  current_user: state.session.current_user
});

const mdtp = dispatch => ({
  fetchUser: (userId) => dispatch(fetchUser(userId)),
});

export default connect(mstp, mdtp)(UserShow);