import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import CreatePinForm from './create_pin_form';
import { createPin } from '../../actions/pins';


const mstp = state => ({ 
  current_user: state.session.current_user,
});

const mdtp = dispatch => ({
  createPin: pin => dispatch(createPin(pin))
});

export default connect(mstp, mdtp)(CreatePinForm);