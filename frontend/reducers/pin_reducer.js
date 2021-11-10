import {
  RECEIVE_PINS,
  RECEIVE_PIN,
  REMOVE_PIN,
} from '../actions/pins';



const PinsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  const nextState = Object.assign({}, oldState)

  switch (action.type) {
    case RECEIVE_PINS:
      return action.pins
    case RECEIVE_PIN:
      return action.pin;
    case REMOVE_PIN:
      delete nextState[action.pinId]
      return nextState;
    default:
      return oldState;
  }
};

export default PinsReducer;