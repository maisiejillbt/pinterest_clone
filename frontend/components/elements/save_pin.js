import { createSave } from '../../utils/save_api_util.js'


const PinSave = (pinId, boardId) => {

  const save = {
    pin_id: pinId, 
    board_id: boardId, 
    created_at: new Date(),
  }

  createSave(save); 
}

export default PinSave; 