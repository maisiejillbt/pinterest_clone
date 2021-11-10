export const createSave = save => (
  $.ajax({
    url: `api/saves/`,
    method: 'POST',
    data: { save }
  })
);

export const updateSave = save => (
  $.ajax({
    url: `/api/save/${save.id}`,
    method: 'patch',
    data: { save }
  })
);

export const deleteSave = saveId => (
  $.ajax({
    url: `/api/save/${saveId}/`,
    method: 'DELETE'
  })
)
