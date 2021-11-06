import React from 'react';
import { connect } from 'react-redux';
import { fetchPins } from '../../actions/pins';
import { fetchUserBoards } from '../../actions/boards';

import PinIndex from './pin_index';

const mapStateToProps = state => ({
  pins: Object.values(state.entities.pins),
  boards: state.entities.boards
});

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
  fetchUserBoards: () => dispatch(fetchUserBoards())
});

export default connect(mapStateToProps, mapDispatchToProps)(PinIndex);