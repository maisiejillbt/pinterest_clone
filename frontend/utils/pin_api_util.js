
export const fetchPins = () => (
  $.ajax({
    url: `api/pins/`
  })
);

export const fetchPin = pinId => (
  $.ajax({
    url: `/api/pins/${pinId}/`
  })
);

export const createPin = pin => (
  $.ajax({
    url: `api/pins/`,
    method: 'POST',
    data: { pin }
  })
);

export const updatePin = pin => (
  $.ajax({
    url: `/api/pins/${pin.id}`,
    method: 'patch',
    data: { pin }
  })
);

export const deletePin = pinId => (
  $.ajax({
    url: `/api/pins/${pinId}/`,
    method: 'DELETE'
  })
)