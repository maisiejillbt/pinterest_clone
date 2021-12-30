import React from 'react';
import { connect } from 'react-redux';
import { fetchUserBoards } from '../../actions/boards';

import BoardIndex from './board_index';

const mstp = (state, ownProps) => ({
  boards: Object.values(state.entities.boards),
  ownProps: ownProps
});

const mdtp = dispatch => ({
  fetchUserBoards: () => dispatch(fetchUserBoards()),
});

export default connect(mstp, mdtp)(BoardIndex);