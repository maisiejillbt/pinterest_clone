import React from 'react';

class CreatePinForm extends React.Component {
  constructor(props) {
    super(props);
    
    this.state = {
      title: '',
      description: '',
      photoFile: null,
      errors: null,
    }
    this.handleSubmit = this.handleSubmit.bind(this);
    this.errors = this.errors.bind(this); 
  }

  errors(){
    this.setState({
      errors: null
    });
    let errors = []; 
    this.state.title ? null : errors.push("Pin must have a title"); 
    this.state.photoFile ? null : errors.push("You must attach a photo");
    return errors;
  }

  handleSubmit(e) {
    e.preventDefault();
    const errors = this.errors();
    if(errors.length < 1){
      const formData = new FormData();
      formData.append('pin[title]', this.state.title);
      formData.append('pin[description]', this.state.description);
      formData.append('pin[user_id]', this.props.current_user.id);
      formData.append('pin[created_at]', new Date());
      formData.append('pin[photo]', this.state.photoFile);
      this.props.createPin(formData)
        .then((res) => {
          this.props.history.push(`/pins/${res.pin.id}`)});
    }else{
      this.setState({
        errors: errors
      })
    }
  } 

  update(fld) {
    return e => this.setState({ [fld]: e.currentTarget.value });
  }

  handleFile(e){
    this.setState({photoFile: e.currentTarget.files[0]});
    
    let image = document.getElementById('output');
    image.src = URL.createObjectURL(e.target.files[0]);
    image.style.width = "80px";
      
  }

  displayErrors(){
    
  }

  render() {
    console.log(this.state.errors)
    return (
      <div className="create-pin-container">
        <div className="create-pin">
          <form onSubmit={this.handleSubmit}>
            <label htmlFor="photo-upload" id="drag-and-drop">Drag and drop or click to upload</label>
              <input id="photo-upload" type="file" accept="image/gif, image/jpeg, image/png" name="image" onChange={this.handleFile.bind(this)}/>            
            <img id="output"/>
            
            <div className="right">
              <label>
                <input
                  id="pin-name"
                  type='text'
                  placeholder="Add Your Title"
                  value={this.state.title}
                  onChange={this.update('title')}
                />
              </label>
              <label>
                <textarea
                  id="pin-description"
                  value={this.state.description}
                  placeholder="Tell everyone what your Pin is about"
                  onChange={this.update('description')}
                />
              </label>
              <button id="save-pin" type='submit'>Save</button>
            </div>
            {
              this.state.errors 
              ? 
              this.state.errors.map(error => (
                <h3 className="error">{error}</h3>
              ))
              : 
              null
            }
          </form>
        </div>
        
      </div>
    );
  }
}

export default CreatePinForm;
