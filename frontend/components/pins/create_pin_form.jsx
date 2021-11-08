import React from 'react';

class CreatePinForm extends React.Component {
  constructor(props) {
    super(props);
    
    this.state = {
      title: '',
      description: '',
      photoFile: null
    }
    this.handleSubmit = this.handleSubmit.bind(this);
  }

  handleSubmit(e) {
    e.preventDefault();
    const formData = new FormData();
    formData.append('pin[title]', this.state.title);
    formData.append('pin[description]', this.state.description);
    formData.append('pin[user_id]', this.props.current_user);
    formData.append('pin[created_at]', new Date());
    formData.append('pin[photo]', this.state.photoFile);
    this.props.createPin(formData);
  } 

  update(fld) {
    return e => this.setState({ [fld]: e.currentTarget.value });
  }

  handleFile(e){
    this.setState({photoFile: e.currentTarget.files[0]})
  }

  render() {

    return (
      <div className="create-pin">
        <h3>Create A Pin!</h3>
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
              value={this.state.description}
              placeholder="Tell everyone what your Pin is about"
              onChange={this.update('description')}
            />
          </label>
          <input type="file" onChange={this.handleFile.bind(this)}/>
          <button type='submit'>Create Pin!</button>
        </form>
      </div>
    );
  }
}

export default CreatePinForm;
