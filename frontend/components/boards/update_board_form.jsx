
import React from 'react';

class UpdateBoardForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      name: '',
      public: true,
      description:'',
      user_id: this.props.current_user.id,
      created_at: new Date()
    }
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  componentDidMount(){
    this.props.fetchBoard(this.props.match.params.boardId)
      .then(response => {
        this.setState(response.board)
        if(!this.state.description)
          {this.setState({description:''})}
      })
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.updateBoard(this.state);
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
      <div className="board-form-container">
        <div className="board-form">
          <h1>Edit your board</h1>
          <form onSubmit={this.handleSubmit}>
            <h2>Name</h2> 
              <input
                id="name"
                type='text'
                placeholder="Name"
                value={this.state.name}
                onChange={this.update('name')} 
              />

            <h2>Description</h2> 
              <textarea
                id="description"
                placeholder="Description"
                value={this.state.description}
                onChange={this.update('description')} 
              />
      

            <label>Keep this board secret
              <input type="checkbox" value={this.state.public} onChange={() => this.togglePrivate()}/>
              <p>So only you and collaborators can see it.</p>
            </label>

            <button type='submit'>Update</button>
          </form>
        </div>
      </div>
    );
  }
}

export default UpdateBoardForm;