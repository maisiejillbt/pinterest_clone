export const RECEIVE_PINS = 'RECEIVE_PINS';
export const RECEIVE_PIN = 'RECEIVE_PIN';

export const REMOVE_PIN = 'REMOVE_PIN';

import { fetchPins, fetchPin, createPin, updatePin, deletePin } from '../utils/pin_api_util';


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
  return fetchPins()
    .then(pins => dispatch(receivePins(pins)));
}

export const fetchPin = pinId => dispatch => {
  return fetchPin()
    .then(pin => dispatch(receivePin(pin)));
}

export const createPin = pin => dispatch => {
  return creeatePin(pin)
    .then(pin => dispatch(receivePin(pin)));
}

export const updatePin = pin => dispatch => {
  return updtatePin(pin)
    .then(pin => dispatch(receivePin(pin)));
}

export const deletePin = pinId => dispatch => {
  return deletePin(pinId)
    .then(() => dispatch(removePin(pinId)));
}





