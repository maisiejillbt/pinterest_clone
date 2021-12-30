import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import UpdatePinForm from './update_pin_form';
import { updatePin, fetchPin, deletePin } from '../../actions/pins';


const mstp = (state, ownProps) => ({ 
  current_user: state.session.current_user,
  pins: Object.values(state.entities.pins)
});

const mdtp = dispatch => ({
  updatePin: pin => dispatch(updatePin(pin)),
  fetchPin: pinId => dispatch(fetchPin(pinId)),
  deletePin: pinId => dispatch(deletePin(pinId)),
});

export default connect(mstp, mdtp)(UpdatePinForm);