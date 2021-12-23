import React from 'react';
import { connect } from 'react-redux';
import { fetchPins } from '../../actions/pins';
import { fetchUserBoards } from '../../actions/boards';
import { fetchUser } from '../../actions/users';
import PinIndex from './pin_index';

const mstp = state => ({
  pins: Object.values(state.entities.pins),
  boards: Object.values(state.entities.boards),
  users: state.entities.users
});

const mdtp = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
  fetchUserBoards: () => dispatch(fetchUserBoards()),
  fetchUser: userId => dispatch(fetchUser(userId))
});

export default connect(mstp, mdtp)(PinIndex);