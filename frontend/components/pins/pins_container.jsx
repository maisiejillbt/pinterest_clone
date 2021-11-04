import React from 'react';
import { connect } from 'react-redux';
import { fetchPins } from '../../actions/pins';
import PinIndex from './pin_index';

const mapStateToProps = state => ({
  pins: Object.values(state.entities.pins)
});

const mapDispatchToProps = dispatch => ({
  fetchPins: () => dispatch(fetchPins()),
});

export default connect(mapStateToProps, mapDispatchToProps)(PinIndex);