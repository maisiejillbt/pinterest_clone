import React from 'react';
import { connect } from 'react-redux';
import { fetchUserBoards } from '../../actions/boards';


import BoardIndex from './board_index';

const mapStateToProps = (state, ownProps) => ({
  boards: Object.values(state.entities.boards),
  ownProps: ownProps
});

const mapDispatchToProps = dispatch => ({
  fetchUserBoards: () => dispatch(fetchUserBoards()),
});

export default connect(mapStateToProps, mapDispatchToProps)(BoardIndex);