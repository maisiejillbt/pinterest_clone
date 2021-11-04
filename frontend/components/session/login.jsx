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
      .then(() => this.props.history.push('/jackblack'));
  }

  handleSubmit(e) {
    e.preventDefault();

    this.props.login(this.state)
      .then(() => this.props.history.push('/jackblack'));
  }

  render() {
    return (
      <div className="session-form">
        <h2>Log In!</h2>
        <form>
          <label>Email:
          <input
            type="text"
            value={this.state.email}
            onChange={this.handleInput('email')}
          />
          </label>

          <label>Password:
          <input
            type="password"
            value={this.state.password}
            onChange={this.handleInput('password')}
          />
          <button onClick={this.handleSubmit}>Log In!</button>
          </label>
        </form>

        <a onClick={this.demoSignIn}>Demo Login</a>
      </div>
    );
  }
}

export default Login;