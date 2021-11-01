import React from 'react'; 


class SignUp extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      email: '', 
      password: '',
      age: '',
      username: ''
    }

    this.handleSubmit = this.handleSubmit.bind(this);
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
    this.props.createNewUser(this.state)
      .then(()=>this.props.history.push('/')) /// this is where we will be sent after submit!
  }


  render() {
    return(
      <div className="sessionForm">
        <h1>Sign Up</h1>

        <form onSubmit={this.handleSubmit}>
          <label>Email
            <input 
              type="text" 
              placeholder="Email"
              value={this.state.email}
              onChange={this.handleInput('email')}
              />
          </label>

          <label>Password
            <input 
              type="password" 
              placeholder="Create a password"
              value={this.state.password}
              onChange={this.handleInput('password')}
              />
          </label>

          <label>Age
            <input 
              type="number" 
              min="18"
              placeholder="Age"
              value={this.state.age}
              onChange={this.handleInput('age')}
              />
          </label>

          {/* {Would love to come back to this and add in the entire set of questions asked during create user} */}
          {/* <div>
            <input type="radio" id="he/him/his" name="pronouns" value={this.state.pronouns} onChange={this.handleInput('pronouns')}
                  defaultChecked/>
            <label htmlFor="he/him/his">He/Him/His</label>
          </div>

          <div>
            <input type="radio" id="she/her/hers" name="pronouns" value={this.state.pronouns} onChange={this.handleInput('pronouns')}/>
            <label htmlFor="she/her/hers">She/Her/Hers</label>
          </div>

          <div>
            <input type="radio" id="they/them/theirs" name="pronouns" value={this.state.pronouns} onChange={this.handleInput('pronouns')}/>
            <label htmlFor="they/them/theirs">They/Them/Theirs</label>
          </div>

          <div>
            <input type="text" id="other" name="pronouns" value={this.state.pronouns} onChange={this.handleInput('pronouns')}/>
            <label htmlFor="other">Other</label>
          </div> */}

          <button onClick={this.handleSubmit}>Continue</button>
        </form>
      </div>
    );
  }
};

export default SignUp;