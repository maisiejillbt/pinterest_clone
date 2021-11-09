import {
  RECEIVE_USER,
} from '../actions/users';

const UsersReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  const nextState = Object.assign({}, oldState)
  switch (action.type) {
    case RECEIVE_USER:
      return {...action.user, ...nextState};
    default:
      return oldState;
  }
};

export default UsersReducer;

