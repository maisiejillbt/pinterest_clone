import { connect } from 'react-redux'; 
import { createNewUser, loginUser, removeErrors } from '../../actions/session';
import SignUp from './signup'; 

const mstp = state => ({
  authErrors: state.errors.session
}); 

const mdtp = dispatch => ({
  createNewUser: formUser => dispatch(createNewUser(formUser)), 
  login: formUser => dispatch(loginUser(formUser)),
  removeErrors: () => dispatch(removeErrors())
}); 

export default connect(mstp, mdtp)(SignUp); 