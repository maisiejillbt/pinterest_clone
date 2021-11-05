
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
      <div className="board-form">
        <h3>Edit your board</h3>
        <form onSubmit={this.handleSubmit}>
          <label>Name
            <input
              type='text'
              placeholder="Name"
              value={this.state.name}
              onChange={this.update('name')} 
            />
          </label>

          <label>Description
            <textarea
              placeholder="Description"
              value={this.state.description}
              onChange={this.update('description')} 
            />
          </label>

          <label>Keep this board secret
            <input type="checkbox" value={this.state.public} onChange={() => this.togglePrivate()}/>
            <p>So only you and collaborators can see it.</p>
          </label>

          <button type='submit'>Update</button>
        </form>
      </div>
    );
  }
}

export default UpdateBoardForm;