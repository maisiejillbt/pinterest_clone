import {
  RECEIVE_ALL_BOARDS,
  RECEIVE_BOARD,
  REMOVE_BOARD,
} from '../actions/board_actions';
import merge from 'lodash/merge';


const boardReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  const nextState = Object.assign({}, oldState)

  switch (action.type) {
    case RECEIVE_ALL_BOARDS:
      return action.boards
    case RECEIVE_BOARD:
       nextState[action.board.id]: action.board 
      return nextState;
    case REMOVE_BOARD:
      delete nextState[action.boardId]
      return nextState;
    default:
      return oldState;
  }
};

export default BoardsReducer;