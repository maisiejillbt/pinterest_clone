import React from 'react'; 

class SignUp extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      email: '', 
      password: '',
      age: '',
      username: '',
    }
    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateErrors = this.updateErrors.bind(this);
  }

  handleInput(type){
    return e => {
      this.setState({[type]: e.target.value})
      this.setState({
        username: this.state.email
      })
    };
  }

  handleSubmit(e){
    e.preventDefault(); 
    // this.updateErrors();
    
    this.props.createNewUser(this.state)
      .then(() => 
        this.props.login(this.state)
          .then(() =>
            this.props.history.push('/pins')
        ));
    
  }

  updateErrors(){
    const backErrors = this.props.authErrors; 

    let frontErrors = {
      pwError:"",
      emailError:"",
      ageError:"",
    };

    for(let i = 0; i < backErrors.length; i++){
      if(backErrors[i].includes(`Password`)){
        frontErrors[`pwError`] = backErrors[i]
      }else if(backErrors[i].includes(`Email`)){
        frontErrors[`emailError`] = backErrors[i]
      }else if(backErrors[i].includes(`Age`)){
        frontErrors[`ageError`] = backErrors[i]
      }
    };
    return frontErrors;
  }

  render() {
    let errors = this.updateErrors();
    return(
      <div className="signup-container">
        <div className="signup">
          <div className="content">
            <img src={window.main_logo} />
            <h1>Welcome to Twinterest</h1>
            <h3>Find new ideas to try</h3>

            <form onSubmit={this.handleSubmit}>
            
              <input 
                type="text" 
                placeholder="Email"
                value={this.state.email}
                onChange={this.handleInput('email')}
                />
              <h2 className="error">{errors.emailError}</h2>
              <input 
                type="password" 
                placeholder="Create a password"
                value={this.state.password}
                onChange={this.handleInput('password')}
                />
              <h2 className="error">{errors.pwError}</h2>
              <input 
                type="number" 
                min="18"
                placeholder="Age"
                value={this.state.age}
                onChange={this.handleInput('age')}
                />
              <h2 className="error">{errors.ageError}</h2>
              
              <button className="continue" onClick={this.handleSubmit}>Continue</button>
            </form>
          </div>
        </div>
        <div onClick={() => this.props.history.push('/landing')} className="modal-background"></div>
      </div>
    );
  }
};

export default SignUp;