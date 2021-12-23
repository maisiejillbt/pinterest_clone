import React from 'react';

class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: '',
      pwError:"",
      emailError:"",
      credentialError:"",
    };
    this.demoSignIn = this.demoSignIn.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.updateErrors = this.updateErrors.bind(this);
    this.errorTimeout; 
  }

  handleInput(type) {
    return (e) => {
      this.setState({ [type]: e.target.value });
    };
  }

  componentWillUnmount(){
    clearTimeout(this.errorTimeout);
  }

  demoSignIn(e) {
    const demoState = ({
      email: 'demo@demo.com',
      password: 'password'
    });
    e.preventDefault();
    this.props.login(demoState)
      .then(() => {
        this.props.history.push('/pins')
        });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.updateErrors();
    this.props.login(this.state)
      .then(() => {
        this.props.history.push('/pins')
      });
  }

  updateErrors(){
    let errors = {
      pwError:"",
      emailError:"",
    }
    this.setState(errors);
    errors = {};
    !this.state.password ? errors["pwError"] = "you must enter your password" : errors["pwError"];
    !this.state.email ? errors["emailError"] = "you must enter your email" : errors["emailError"];
    !this.state.email.includes("@") ? errors["emailError"] = "you must enter a valid email" : errors["emailError"];
    this.setState(errors);
  }


  render() {
    const authError = this.props.authError[0] 
                      && !this.state.pwError  
                      ? this.props.authError[0]
                      : null;
    return (
      <div className="login-container">
        <div className="login">
          <div className="content">
            <img src={window.main_logo} />
            <h1>Welcome to Twinterest</h1>
            <form>
              <input
                type="text"
                placeholder="Email"
                value={this.state.email}
                onChange={this.handleInput('email')}
              />
              <h3 className="error">{this.state.emailError}</h3>
              <input
                type="password"
                placeholder="Password"
                value={this.state.password}
                onChange={this.handleInput('password')}
              />
              <h3 className="error">{this.state.pwError}</h3>
              <h3 className="error">{authError}</h3>
                
              <h3 className="forgot">Forgot your password?</h3>
              <h3 className="hide-forgot">Maybe your mom knows? Check your notes app?</h3>
              <button onClick={this.handleSubmit}>Log In</button>
            </form>

            <h3>OR</h3>
            
            <button onClick={this.demoSignIn} className="demo-login">
              Demo Login
            </button>            
          </div>
        </div>
        <div onClick={() => this.props.history.push('/')} className="modal-background"></div>
      </div>
    );
  }
}

export default Login;