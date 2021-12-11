import React from 'react'; 

class SignUp extends React.Component {
  constructor(props){
    super(props)
    this.state = {
      email: '', 
      password: '',
      age: '',
      username: '',
      pwError:"",
      emailError:"",
      ageError:"",
      hasError: false,
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

  assignAvatar(){
    const avatars = [
      window.avatar_blue,
      window.avatar_green,
      window.avatar_dkgreen,
      window.avatar_gold,] 
    const avatar = avatars[Math.floor(Math.random() * avatars.length)]
    return avatar;
  }

  handleSubmit(e){
    e.preventDefault(); 
    if(!this.state.hasErrors){
      this.props.createNewUser(this.state)
      .then(() => 
        this.props.login(this.state)
          .then(() =>
            this.props.history.push('/pins')
        ));
    }
    this.updateErrors();
  }

  updateErrors(){
    let errors = {
      pwError:"",
      emailError:"",
      ageError:"",
    }
    this.state.password.length < 6 ? errors["pwError"] = "your password must be 6 characters" : errors["pwError"];
    !this.state.password ? errors["pwError"] = "you must enter your password" : errors["pwError"];
    !this.state.email ? errors["emailError"] = "you must enter your email" : errors["emailError"];
    !this.state.email.includes("@") ? errors["emailError"] = "you must enter a valid email" : errors["emailError"];
    !this.state.age ? errors["ageError"] = "you must enter your age" : errors["ageError"];
    this.state.age < 18 ? errors["ageError"] = "you must be 18 to join" : errors["ageError"];
    Object.keys(errors).length === 0 ? errors["hasError"] = false : errors["hasError"] = true;
    this.setState(errors)
  }

  render() {
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
            <h2 className="error">{this.state.emailError}</h2>
            <input 
              type="password" 
              placeholder="Create a password"
              value={this.state.password}
              onChange={this.handleInput('password')}
              />
            <h2 className="error">{this.state.pwError}</h2>
            <input 
              type="number" 
              min="18"
              placeholder="Age"
              value={this.state.age}
              onChange={this.handleInput('age')}
              />
            <h2 className="error">{this.state.ageError}</h2>

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

            <button className="continue" onClick={this.handleSubmit}>Continue</button>
          </form>
        </div>
      </div>
      <div onClick={() => this.props.history.push('/')} className="modal-background"></div>
    </div>
    );
  }
};

export default SignUp;