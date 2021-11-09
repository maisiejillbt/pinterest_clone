import React from 'react'; 

const LandingPage = () => {


  return(

    <div className="landing">

      <div className="content">

        <div className="head">
          <h1>Get your next</h1>
          <h2>weeknight dinner idea</h2>
        </div>
        
        <div className="overlay">
        </div>
        <div className="image-display">

          <div id="img1" className="image-container">
            <img src={window.landing11} />
          </div>

          <div id="img2" className="image-container">
            <img src={window.landing12} />
          </div>

          <div id="img3" className="image-container">
            <img src={window.landing13} />
          </div>

          <div id="img4" className="image-container">
            <img src={window.landing14} />
          </div>

          <div id="img5" className="image-container">
            <img src={window.landing15} />
          </div>

          <div id="img6" className="image-container">
            <img src={window.landing16} />
          </div>

          <div id="img7" className="image-container">
            <img src={window.landing17} />
          </div>
        </div>
      </div>
    
    </div>


  )

}

export default LandingPage; 