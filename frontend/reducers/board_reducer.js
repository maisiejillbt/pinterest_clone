import {
  RECEIVE_BOARDS,
  RECEIVE_BOARD,
  REMOVE_BOARD,
} from '../actions/boards';

const BoardsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  const nextState = Object.assign({}, oldState)

  switch (action.type) {
    case RECEIVE_BOARDS:
      const newState = {...nextState, ...action.boards}
      return newState
    case RECEIVE_BOARD:
      return {...action.board, ...nextState};
    case REMOVE_BOARD:
      delete nextState[action.boardId]
      return nextState;
    default:
      return oldState;
  }
};

export default BoardsReducer;