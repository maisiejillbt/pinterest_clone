import React from 'react';

class UpdatePinForm extends React.Component {
  constructor(props) {
    super(props);
    this.handleSubmit = this.handleSubmit.bind(this);
    this.state = {
      title:'', 
      decription: '',
      photoUrl: null
    }
    this.deletePin = this.deletePin.bind(this);
  }

  componentDidMount(){
    this.props.fetchPin(this.props.match.params.pinId)
      .then(response => {
        this.setState(response.pin)
      })
  }

  handleSubmit(e) {
    e.preventDefault();
    const formData = new FormData();
    formData.append('pin[title]', this.state.title);
    formData.append('pin[description]', this.state.description);
    formData.append('pin[user_id]', this.props.current_user.id);
    formData.append('pin[created_at]', new Date());
    formData.append('id',this.props.match.params.pinId);

    if(this.state.photoFile){
      formData.append('pin[photo]', this.state.photoFile);
    }
    this.props.updatePin(formData);
  } 

  update(fld) {
    return e => this.setState({ [fld]: e.currentTarget.value });
  }

  handleFile(e){
    this.setState({photoFile: e.currentTarget.files[0]})
  }

  deletePin(){
    this.props.deletePin(this.props.match.params.pinId)
      .then(() => {
          this.props.history.push('/pins')
      });
  }

  render() {

    if (this.state.title) {

      return (
        <div className="update-pin">
          <h3>Update your Pin!</h3>
          <form onSubmit={this.handleSubmit}>
            <label>Title
              <input
                type='text'
                placeholder="Add Your Title"
                value={this.state.title}
                onChange={this.update('title')}
              />
            </label>
            <label>Description
              <textarea
                value={this.state.description ? this.state.description : ''}
                placeholder="Tell everyone what your Pin is about"
                onChange={this.update('description')}
              />
            </label>
            <input type="file" onChange={this.handleFile.bind(this)}/>
            <button type='submit'>Update Pin!</button>
          </form> 
          <button onClick={() => this.deletePin()}>Delete Pin</button>
        </div>
      );
    }else{
    return null;
    }
  }
}

export default UpdatePinForm;
