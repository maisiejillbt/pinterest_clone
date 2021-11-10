export const createFollow = follow => (
  $.ajax({
    url: `api/follows/`,
    method: 'POST',
    data: { follow }
  })
);

export const updateFollow = follow => (
  $.ajax({
    url: `/api/follow/${follow.id}`,
    method: 'patch',
    data: { follow }
  })
);

export const deleteFollow = folllowId => (
  $.ajax({
    url: `/api/follow/${followId}/`,
    method: 'DELETE'
  })
)
