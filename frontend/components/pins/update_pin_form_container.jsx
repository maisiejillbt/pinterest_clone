import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import UpdatePinForm from './update_pin_form';
import { updatePin, fetchPin } from '../../actions/pins';


const mapStateToProps = (state, ownProps) => ({ 
  current_user: state.session.current_user,
});

const mapDispatchToProps = dispatch => ({
  updatePin: pin => dispatch(updatePin(pin)),
  fetchPin: pinId => dispatch(fetchPin(pinId)),
});

export default connect(mapStateToProps, mapDispatchToProps)(UpdatePinForm);