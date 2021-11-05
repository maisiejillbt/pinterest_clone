import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import CreateBoardForm from './create_board_form';
import { createBoard } from '../../actions/boards'; 


const mapStateToProps = state => ({ 
  current_user: state.session.current_user,
});

const mapDispatchToProps = dispatch => ({
  createBoard: board => dispatch(createBoard(board))
});

export default connect(mapStateToProps, mapDispatchToProps)(CreateBoardForm);