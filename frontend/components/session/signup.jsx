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

    this.props.createNewUser(this.state)
      .then(() => 
        this.props.login(this.state)
          .then(() =>
            this.props.history.push('/pins')
        ));
      
     /// this is where we will be sent after submit!
  }

  // trying and failing to implement default avatars  :( 

    // handleSubmit(e) {
    //   e.preventDefault();
    //   const formData = new FormData();
    //   formData.append('user[email]', this.state.email);
    //   formData.append('user[password]', this.state.password);
    //   formData.append('user[age]', this.state.age);
    //   formData.append('user[photo]', this.state.photoFile);
      
    //   this.props.createNewUser(formData)
    //     .then(() => 
    //       this.props.login(this.state))
    // } 

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
            <input 
              type="password" 
              placeholder="Create a password"
              value={this.state.password}
              onChange={this.handleInput('password')}
              />
            <input 
              type="number" 
              min="18"
              placeholder="Age"
              value={this.state.age}
              onChange={this.handleInput('age')}
              />


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