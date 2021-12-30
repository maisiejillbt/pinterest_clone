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
  type: REMOVE_PIN, 
  pinId
});

export const fetchPins = () => dispatch => (
  PinUtils.fetchPins()
    .then(pins => dispatch(receivePins(pins)))
);

export const fetchPin = pinId => dispatch => (
  PinUtils.fetchPin(pinId)
    .then(pin => dispatch(receivePin(pin)))
);

export const createPin = pin => dispatch => (
  PinUtils.createPin(pin)
    .then(pin => dispatch(receivePin(pin)))
);

export const updatePin = pin => dispatch => (
  PinUtils.updatePin(pin)
    .then(pin => dispatch(receivePin(pin)))
);

export const deletePin = pinId => dispatch => (
  PinUtils.deletePin(pinId)
    .then(() => dispatch(removePin(pinId)))
);





