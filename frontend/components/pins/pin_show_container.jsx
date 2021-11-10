import { connect } from 'react-redux';
import { fetchPin } from '../../actions/pins';
import { fetchUserBoards } from '../../actions/boards';
import { createFollow, fetchFollows } from '../../actions/follows';


import PinShow from './pin_show';

const mapStateToProps = state => ({
  pin: state.entities.pins,
  boards: Object.values(state.entities.boards),
  current_user: state.session.current_user,
  follows: state.entities.follows
});

const mapDispatchToProps = dispatch => ({
  fetchPin: (pinId) => dispatch(fetchPin(pinId)),
  fetchUserBoards: () => dispatch(fetchUserBoards()),  
  createFollow: (follow) => dispatch(createFollow(follow)),
  fetchFollows: () => dispatch(fetchFollows()),
});

export default connect(mapStateToProps, mapDispatchToProps)(PinShow);