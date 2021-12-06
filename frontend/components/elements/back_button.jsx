import React from 'react'
import ReactDOM from 'react-dom';
import { useHistory } from "react-router-dom";

const BackButton = (props) => {
    const history = useHistory();
    return (
        <button className="back-button" onClick={() => history.goBack()}> <img src={window.backButton} alt="back" />
        </button>
    )
}; 

export default BackButton