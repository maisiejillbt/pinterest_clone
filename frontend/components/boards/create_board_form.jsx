import React from 'react';

class CreateBoardForm extends React.Component {
  constructor(props) {
    super(props);
    
    this.state = {
      name: '',
      public: true,
      description:"",
      user_id: this.props.current_user.id,
      created_at: new Date()
    }
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.createBoard(this.state)
      .then(() => {
        this.props.ownProps.closeModal()
        }
      )
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

    return (
        <div className="create board-form">
          <h1>Create board</h1>
          <form onSubmit={this.handleSubmit}>
            <h2>Name</h2> 
            <input
              id="name"
              type='text'
              placeholder="Name"
              value={this.state.name}
              onChange={this.update('name')}  
            />
            
            <div className="check-box">
              <input type="checkbox" value={this.state.public} onChange={() => this.togglePrivate()}/>
              <div>
                <h3>Keep this board secret</h3> 
                <p>So only you and collaborators can see it.</p>
              </div>
            </div>

            <button id="boardSubmit" type='submit'>Create</button>
          </form>
        </div>
    );
  }
}

export default CreateBoardForm;
