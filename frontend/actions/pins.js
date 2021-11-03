export const RECEIVE_PINS = 'RECEIVE_PINS';
export const RECEIVE_PIN = 'RECEIVE_PIN';
export const REMOVE_PIN = 'REMOVE_PIN';

import *  as PinUtils from '../utils/pin_api_util';


const receivePins = pins => ({
  type: RECEIVE_PINS,
  pins
});

const receivePin = pin => ({
  type: RECEIVE_PIN,
  pin
});

const removePin = pinId => ({
  type:REMOVE_PIN, 
  pinId
})

export const fetchPins = () => dispatch => {
  return PinUtils.fetchPins()
    .then(pins => dispatch(receivePins(pins)));
}

export const fetchPin = pinId => dispatch => {
  return PinUtils.fetchPin()
    .then(pin => dispatch(receivePin(pin)));
}

export const createPin = pin => dispatch => {
  return PinUtils.createPin(pin)
    .then(pin => dispatch(receivePin(pin)));
}

export const updatePin = pin => dispatch => {
  return PinUtils.updatePin(pin)
    .then(pin => dispatch(receivePin(pin)));
}

export const deletePin = pinId => dispatch => {
  return PinUtils.deletePin(pinId)
    .then(() => dispatch(removePin(pinId)));
}





