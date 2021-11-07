import {
  RECEIVE_USER,
} from '../actions/users';

const UsersReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  const nextState = Object.assign({}, oldState)
  switch (action.type) {
    case RECEIVE_USER:
      nextState[action.user.id] = action.user
      return nextState;
    default:
      return oldState;
  }
};

export default UsersReducer;

