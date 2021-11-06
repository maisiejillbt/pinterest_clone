import React from 'react';
import { connect } from 'react-redux';
import { fetchUserBoards } from '../../actions/boards';
import { fetchPin } from '../../actions/pins';

import BoardIndex from './board_index';

const mapStateToProps = (state, ownProps) => ({
  boards: Object.values(state.entities.boards),
  photos: state.entities.boards.photos,
  ownProps: ownProps
});

const mapDispatchToProps = dispatch => ({
  fetchUserBoards: () => dispatch(fetchUserBoards()),
});

export default connect(mapStateToProps, mapDispatchToProps)(BoardIndex);