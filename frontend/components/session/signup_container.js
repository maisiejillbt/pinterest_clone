import { connect } from 'react-redux'; 
import { createNewUser } from '../../actions/session';
import SignUp from './signup'; 

const mdtp = dispatch => ({
  createNewUser: formUser => dispatch(createNewUser(formUser))
}); 

export default connect(null, mdtp)(SignUp); 