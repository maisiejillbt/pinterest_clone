
export const fetchPins = () => (
  $.ajax({
    url: `api/pins/`,
    method: 'GET'
  })
);

export const fetchPin = pinId => (
  $.ajax({
    url: `/api/pins/${pinId}/`,
    method:'GET'
  })
);

export const createPin = pin => (
  $.ajax({
    url: `api/pins/`,
    method: 'POST',
    data: pin, 
    contentType: false,
    processData: false
  })
);

export const updatePin = (pin) => (
  $.ajax({
    url: `/api/pins/${parseInt(pin.get('id'))}/`,
    method: 'patch',
    data: pin,
    contentType: false,
    processData: false
  })
);

export const deletePin = pinId => ( 
  $.ajax({
    url: `/api/pins/${pinId}/`,
    method: 'DELETE'
  })
)