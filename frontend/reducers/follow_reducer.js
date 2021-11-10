import {
  RECEIVE_FOLLOW,
  RECEIVE_FOLLOWS,
  REMOVE_FOLLOW,

} from '../actions/follows';

const FollowsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  const nextState = Object.assign({}, oldState)
  switch (action.type) {
    case RECEIVE_FOLLOW:
      return {...action.follow, ...nextState};
    case RECEIVE_FOLLOWS:
      return action.follows;
    case REMOVE_FOLLOW:
      delete nextState[action.followId]
      return nextState;
    default:
      return oldState;
  }
};

export default FollowsReducer;