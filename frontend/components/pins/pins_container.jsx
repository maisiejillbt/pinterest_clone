import React from 'react';
import { connect } from 'react-redux';
import { fetchPins } from '../../actions/pins';
import { fetchUserBoards } from '../../actions/boards';
import { fetchUser } from '../../actions/users';

import PinIndex from './pin_index';

const mapStateToProps = state => ({
  pins: state.entities.pins,
  boards: state.entities.boards,
  users: state.entities.users
});

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
  fetchUserBoards: () => dispatch(fetchUserBoards()),
  fetchUser: userId => dispatch(fetchUser(userId))
});

export default connect(mapStateToProps, mapDispatchToProps)(PinIndex);