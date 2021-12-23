import React from 'react';
import { connect } from 'react-redux';
import { fetchBoard, fetchUserBoards } from '../../actions/boards';

import BoardShow from './board_show';

const mstp = (state, ownProps) => ({
  boards: Object.values(state.entities.boards),
  current_user: state.session.current_user,
  ownProps: ownProps
});

const mdtp = dispatch => ({
  fetchBoard: (boardId) => dispatch(fetchBoard(boardId)),
  fetchUserBoards: () => dispatch(fetchUserBoards())
});

export default connect(mstp, mdtp)(BoardShow);