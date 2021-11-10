import { connect } from 'react-redux'; 
import { createNewUser, loginUser } from '../../actions/session';
import SignUp from './signup'; 

const mdtp = dispatch => ({
  createNewUser: formUser => dispatch(createNewUser(formUser)), 
  login: formUser => dispatch(loginUser(formUser)),
}); 

export default connect(null, mdtp)(SignUp); 