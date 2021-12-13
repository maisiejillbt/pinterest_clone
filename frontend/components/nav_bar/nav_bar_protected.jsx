import React from 'react';
import { Link } from 'react-router-dom';

class NavBarProtected extends React.Component {
  constructor(props){
    super(props);
    this.state = {
      current_user: this.props.current_user, 
      dropdownOpen: false,
    }
    this.close = this.close.bind(this);
    this.logout = this.logout.bind(this);

    this.dropdownTimeout;

  }

  componentDidUpdate(){
    const { dropdownOpen } = this.state;

    this.dropdownTimeout = setTimeout(() => {
      if(dropdownOpen){
        window.addEventListener('click', this.close);
      }
      else{
        window.removeEventListener('click', this.close);
      }
    }, 0);
  }

  componentWillUnmount(){
    clearTimeout(this.dropdownTimeout);
  }

  close(){
    this.setState({
      dropdownOpen: false,
    });
  }
  
  toggleDropdown(){
    this.setState(prevState => ({
        dropdownOpen: !prevState.dropdownOpen
    }));
  }

  logout(){
    this.props.logoutUser()
      .then(() => this.props.history.push('/'))
  }

  dropdown(){
      return(
        <div id="nav-dropdown" className="nav-dropdown">
            <button id="logout-button" onClick={this.logout}>Log out</button>
        </div>
      );
  }

  rightHeader(){
    return (
        <div className="RightHeader">
           <a href="https://www.linkedin.com/in/maisie-bruno-tyne-178a469a/" target="_blank"><img className="icon" src={window.linkedin}/></a>
           <a href="https://github.com/maisiejillbt" target="_blank"><img className="icon" src={window.github}/></a>
            <Link to={`/users/${this.props.current_user.id}`}><img id="avatar" className="icon" src={window.avatar_blue}/></Link>
            <img className="chevron" src={window.chevron} onClick={() => this.toggleDropdown()}/>
            { this.state.dropdownOpen ? this.dropdown() : null }
        </div>
    );
  }

  render() {
    return (
      <header className="nav-bar">
        <div className="LeftHeader">
        <Link to="/pins"><img className="MainLogo" src={window.main_logo} alt="main-logo"/></Link>
        <a href="https://maisiejillbt.github.io/Resume/" target="_blank"><h1 className="portfolio">Portfolio</h1></a> 
        </div>
        {this.rightHeader()}
      </header>
    )
  }

};

export default NavBarProtected; 