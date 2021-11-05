import React from 'react';

class CreateBoardForm extends React.Component {
  constructor(props) {
    super(props);
    
    this.state = {
      name: '',
      public: true,
      user_id: this.props.current_user.id,
      created_at: new Date()
    }
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createBoard(this.state);
  } 

  update(fld) {
    return e => this.setState({ [fld]: e.currentTarget.value });
  }

  togglePrivate() {
    this.setState({
      public: !this.state.public ? true : false
    })
  }

  render() {
    console.log(this.state)

    return (
      <div>
        <h3>Create A Board!</h3>
        <form onSubmit={this.handleSubmit}>
          <label>Name
            <input
              type='text'
              placeholder="Name"
              value={this.state.name}
              onChange={this.update('name')}
            />
          </label>

          <label>Keep this board secret
            <input type="checkbox" value={this.state.public} onChange={() => this.togglePrivate()}/>
            <p>So only you and collaborators can see it.</p>
          </label>

          <button type='submit'>Create</button>
        </form>
      </div>
    );
  }
}

export default CreateBoardForm;
