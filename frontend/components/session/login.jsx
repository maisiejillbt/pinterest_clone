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
      .then((res) => {
        console.log(res);
        this.props.history.push('/pins')
      });
  }

  updateErrors(){
    if(!this.state.password){
      this.setState({
        pwError:"you must enter your password",
      }); 
    }else{
      this.setState({
        pwError:"",
      }); 
    }
    if(!this.state.email){
      this.setState({
        emailError:"you must enter your email",
      }); 
    }else{
      this.setState({
        emailError:"",
      }); 
    }
    if(this.state.email && this.state.password){
        this.errorTimeout = setTimeout(() => {
          this.setState({
            credentialError:"incorrect credentials"
          })
        }, 1000);
    }
  }


  render() {
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
              <h3 className="error">{this.state.credentialError}</h3>
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