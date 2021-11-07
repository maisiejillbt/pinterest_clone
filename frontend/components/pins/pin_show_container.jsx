import { connect } from 'react-redux';
import { fetchPin } from '../../actions/pins';
import { fetchUserBoards } from '../../actions/boards';

import PinShow from './pin_show';

const mapStateToProps = state => ({
  pins: state.entities.pins,
  boards: state.entities.boards
});

const mapDispatchToProps = dispatch => ({
  fetchPin: (pinId) => dispatch(fetchPin(pinId)),
  fetchUserBoards: () => dispatch(fetchUserBoards())
});

export default connect(mapStateToProps, mapDispatchToProps)(PinShow);