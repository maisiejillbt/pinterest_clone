import React from 'react';



class Login extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      email: '',
      password: '',
    };
    this.demoSignIn = this.demoSignIn.bind(this);
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleInput(type) {
    return (e) => {
      this.setState({ [type]: e.target.value });
    };
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

    this.props.login(this.state)
      .then(() => {
        this.props.history.push('/pins')
      });
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
              <input
                type="password"
                placeholder="Password"
                value={this.state.password}
                onChange={this.handleInput('password')}
              />
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
      </div>
    );
  }
}

export default Login;