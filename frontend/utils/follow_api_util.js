export const createFollow = follow => (
  $.ajax({
    url: `api/follows/`,
    method: 'POST',
    data: { follow }
  })
);

export const deleteFollow = folllowId => (
  $.ajax({
    url: `/api/follow/${followId}/`,
    method: 'DELETE'
  })
)
