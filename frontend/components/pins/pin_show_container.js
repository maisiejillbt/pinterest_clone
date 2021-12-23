import { connect } from 'react-redux';
import { fetchPin } from '../../actions/pins';
import { fetchUserBoards } from '../../actions/boards';
import { createFollow, deleteFollow, fetchFollows } from '../../actions/follows';


import PinShow from './pin_show';

const mstp = state => ({
  pin: state.entities.pins,
  boards: Object.values(state.entities.boards),
  current_user: state.session.current_user,
  follows: Object.values(state.entities.follows),
  following: Object.values(state.entities.follows).map(follow => follow.followed_id)
});

const mdtp = dispatch => ({
  fetchPin: (pinId) => dispatch(fetchPin(pinId)),
  fetchUserBoards: () => dispatch(fetchUserBoards()),  
  createFollow: (follow) => dispatch(createFollow(follow)),
  deleteFollow: (followId) => dispatch(deleteFollow(followId)),
  fetchFollows: () => dispatch(fetchFollows()),
});

export default connect(mstp, mdtp)(PinShow);