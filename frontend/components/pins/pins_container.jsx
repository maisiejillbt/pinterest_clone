import React from 'react';
import { connect } from 'react-redux';
import { createPin, updatePin } from '../../actions/pins';
import Login from './login';

const mapDispatchToProps = dispatch => ({
  createPin: formPin => dispatch(createPin(formPin)),
});

export default connect(null, mapDispatchToProps)(Login);