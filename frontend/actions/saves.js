export const RECEIVE_SAVE = 'RECEIVE_SAVE';
export const REMOVE_SAVE = 'REMOVE_SAVE';

import * as SaveApiUtil from '../utils/save_api_util';


const receiveSave = save => ({
  type: RECEIVE_SAVE,
  save
});

const removeBoard = saveId => ({
  type:REMOVE_SAVE, 
  saveId
})

export const createSave = save => dispatch => {
  return SaveApiUtil.createSave(save)
    .then(save => dispatch(receiveSave(save)));
}

export const deleteSave = saveId => dispatch => {
  return SaveApiUtil.deleteBoard(saveId)
    .then(() => dispatch(removeSave(saveId)));
}
