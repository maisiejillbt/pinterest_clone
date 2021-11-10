import {
  RECEIVE_SAVE,
  REMOVE_SAVE,
} from '../actions/saves';

const SavesReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  const nextState = Object.assign({}, oldState)
  switch (action.type) {
    case RECEIVE_SAVE:
      return {...action.board, ...nextState};
    case REMOVE_SAVE:
      delete nextState[action.saveId]
      return nextState;
    default:
      return oldState;
  }
};

export default SavesReducer;