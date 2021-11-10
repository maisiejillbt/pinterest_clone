import { connect } from 'react-redux';
import { withRouter } from 'react-router-dom';
import UpdateBoardForm from './update_board_form';
import { updateBoard, fetchBoard, deleteBoard } from '../../actions/boards'; 


const mapStateToProps = state => ({ 
  current_user: state.session.current_user,
  boards: state.entities.boards,
});

const mapDispatchToProps = dispatch => ({
  updateBoard: board => dispatch(updateBoard(board)), 
  fetchBoard: boardId => dispatch(fetchBoard(boardId)),
  deleteBoard: boardId => dispatch(deleteBoard(boardId))
});

export default connect(mapStateToProps, mapDispatchToProps)(UpdateBoardForm);