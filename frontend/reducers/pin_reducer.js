import {
  RECEIVE_ALL_PINS,
  RECEIVE_PIN,
  REMOVE_PIN,
} from '../actions/pin_actions';
import merge from 'lodash/merge';


const pinsReducer = (oldState = {}, action) => {
  Object.freeze(oldState);
  const nextState = Object.assign({}, oldState)

  switch (action.type) {
    case RECEIVE_ALL_PINS:
      return action.pins
    case RECEIVE_PIN:
       nextState[action.pin.id]: action.pin 
      return nextState;
    case REMOVE_PIN:
      delete nextState[action.pinId]
      return nextState;
    default:
      return oldState;
  }
};

export default PinsReducer;