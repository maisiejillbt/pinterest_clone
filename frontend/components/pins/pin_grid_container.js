import React from 'react';
import { connect } from 'react-redux';
import { fetchPins, deletePin } from '../../actions/pins';
import { fetchUserBoards } from '../../actions/boards';
import PinGrid from './pin_grid';

const mapStateToProps = (state, ownProps) => ({
  pins: Object.values(ownProps.pins),
  boards: Object.values(state.entities.boards),
  toggle: ownProps.toggle, 
});

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
  deletePin: (pinId) => dispatch(deletePin(pinId)),
  fetchUserBoards: () => dispatch(fetchUserBoards()),
});

export default connect(mapStateToProps, mapDispatchToProps)(PinGrid);