import React from 'react';
import BackButton from '../elements/back_button';


class UpdateBoardForm extends React.Component {
  constructor(props) {
    super(props);
    this.state = {
      id: this.props.match.params.boardId,
      name: ' ',
      public: true,
      description:'',
      user_id: this.props.current_user.id,
      created_at: new Date()
    }
    this.handleSubmit = this.handleSubmit.bind(this);
    this.deleteBoard = this.deleteBoard.bind(this);
  }

  componentDidMount(){
    const boardId = this.props.match.params.boardId
    this.props.fetchBoard(boardId)
      .then(response => {
        this.setState(response.board[boardId])
      });
  }

  handleSubmit(e) {
    e.preventDefault();
    this.props.updateBoard(this.state)
      .then(() => {
        this.props.history.push('/pins')
      });
  } 

  update(fld) {
    return e => this.setState({ [fld]: e.currentTarget.value });
  }

  togglePrivate() {
    this.setState({
      public: !this.state.public ? true : false
    });
  }

  deleteBoard() {
    this.props.deleteBoard(this.props.match.params.boardId)
      .then(() => {
        this.props.history.push(`/users/${this.state.user_id}`)
      });
  }

  render() {
    const boardId = this.props.match.params.boardId;
    return (
      <div className="board-form-container">
        < BackButton /> 
        <div className="board-form">
          <h1>Edit your board</h1>
          <form onSubmit={this.handleSubmit}> 
            <h2>Name</h2> 
              <input
                id="name"
                type='text'
                placeholder={this.props.boards[boardId] ? this.props.boards[boardId].name : "Name"}
                value={this.state.name}
                onChange={this.update('name')} 
              />
            
            { 
              this.state.name ? 
              <div className="b30"></div>
              : 
              <h3 className="error">Your board must have a name</h3>
            }

            <h2>Description</h2> 
              <textarea
                id="description"
                placeholder="Description"
                value={this.state.description}
                onChange={this.update('description')} 
              />
      
            <div className="check-box">
              <input type="checkbox" value={this.state.public} onChange={() => this.togglePrivate()}/>
              <div>
                <h3>Keep this board secret</h3> 
                <p>So only you and collaborators can see it.</p>
              </div>
            </div>
            <div className="submit-delete">
              <div className="delete">
                <h1 onClick={this.deleteBoard}>Delete</h1>
              </div>
              <p id="deleteHide">Are your sure? You cannot undo this!</p>
              <button type='submit'>Done</button>
            </div>
          </form>
        </div>
      </div>
    );
  }
}

export default UpdateBoardForm;