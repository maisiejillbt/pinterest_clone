import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import CreateBoardForm from './create_board_form';
import { createBoard } from '../../actions/boards'; 


const mstp = (state, ownProps) => ({ 
  current_user: state.session.current_user,
  ownProps
});

const mdtp = dispatch => ({
  createBoard: board => dispatch(createBoard(board))
});

export default connect(mstp, mdtp)(CreateBoardForm);