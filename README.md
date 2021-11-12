# Overview 

Twinterest is a fullstack clone based on Pinterest. Pinterest is an image-based social media network where users and businesses can promote and explore their interests by pinning images and videos on virtual bulletin boards. With Twinterest users are able to follow eachother, add pins to their boards, create and edit new pins and boards, and view all other users pins. 

# [View the live site here!](https://tw1nterest.herokuapp.com/)

## Features 

- Account Creation and Authentication 

![](https://github.com/maisiejillbt/pinterest_clone/blob/0b71af5ffae54642c68ab1efbdfddf026ee68a30/app/assets/images/Screen%20Shot%202021-11-11%20at%209.02.10%20PM.png)

![](https://github.com/maisiejillbt/pinterest_clone/blob/073475c786fe1021c83b7f1f18ca2ad201d56d20/app/assets/images/Screen%20Shot%202021-11-11%20at%209.02.36%20PM.png)

    One of my main goals for Twinterest was to stick to the design of Pinterest as closely as possible. Making sure to measure and adjust my cloned site as needed. For me the appearence of the page is just as important as the functionality. 

- View other users pins 

![](https://github.com/maisiejillbt/pinterest_clone/blob/073475c786fe1021c83b7f1f18ca2ad201d56d20/app/assets/images/Screen%20Shot%202021-11-11%20at%209.03.29%20PM.png)

    The Pins 'show' page is still under construction, my goal is to be able to have pins line up and stagger on the page in a consistently uneven fashion. While there were a few different ways that I attempted to implement this, (through flex-box css styling, and grid styling) ultumately none of them worked the way I was hoping. I also want to implement an "unlimited scroll" on this page, and felt it would be best to do both things in tandem as they go hand in hand. 

- View User profiles 

![](https://github.com/maisiejillbt/pinterest_clone/blob/073475c786fe1021c83b7f1f18ca2ad201d56d20/app/assets/images/Screen%20Shot%202021-11-11%20at%209.03.43%20PM.png)

    The Users Profile Page proved to be more complex to put together than I had originally anticipated. I ended up creating a secondary element with a sub element as part of my 'Board' class in order to accheive the effect I wanted. One of the issues I faced with this was how to make as few calls to the back end as possible, while keeping my state shape relatively clean. I ended up only needing a single call, fetching the User and through the user all their boards and pins. These were used in my secondary element both to style it and to link through it to the boards 'show' page. 

```javascript 

class BoardPreview extends React.Component {
  constructor(props){
    super(props)
  }

  render() {
    const board = this.props.board
    const pins = board.pins.length > 0 ? board.pins.slice(0,3) : null
    return(
      <div key={board.id} className="board-container">
        <Link to={`/boards/${board.id}`}> <BoardImagePreview pins={pins}/> </Link>
        <h1 className="board-preview-name">{board.name}</h1>
        <h1 className="small-grey-type">{board.pins.length} Pins</h1>
      </div>
    )
  }
}

class BoardImagePreview extends React.Component {
  constructor(props){
    super(props)
  }

  render(){

    if(this.props.pins) {
      const pins = this.props.pins
      return(
          <div className="board-image-container">
            {
              pins[0].photoUrl ? <img className="left-board-display-image" src={pins[0].photoUrl} /> : <h1 className="left-board-display-image">Photo goes here</h1>
            }
            <div className="right-images">
            {
              pins[1].photoUrl ? <img className="right-top-board-display-image" src={pins[1].photoUrl} /> : <h1 className="right-top-board-display-image">Photo goes here</h1>
            }
            {
              pins[2].photoUrl ? <img className="right-bottom-board-display-image" src={pins[2].photoUrl} /> : <h1 className="right-bottom-board-display-image">Photo goes here</h1>
            }
            </div>
          </div>
      )
    } else {
      return(null)
    }}
  
}

```
### The jbuilder call used for boards show 

``` ruby 
json.id user.id
json.username user.username 
json.name user.name 
json.bio user.bio 
json.pronouns user.pronouns
json.following user.following
json.followers user.followers

json.boards user.boards do |board|
    json.partial! 'api/boards/board', board: board
end
if @user.photo.attached?
  json.photoUrl url_for(@user.photo)
end

```


- View indiviual Pins 

![](https://github.com/maisiejillbt/pinterest_clone/blob/073475c786fe1021c83b7f1f18ca2ad201d56d20/app/assets/images/Screen%20Shot%202021-11-11%20at%209.08.17%20PM.png)

    Creating the Pin element was one of the most fun aspects of the project for me, I love being able to create something that looks and functions exactly I hope it will. Matching the CSS of this element exactly while still being able to re-use some of the styles and full elements (board dropdown) was a great challenge. I really had to think about how exactly I wanted this element to function, as it not only needed to be a display of the pin, but also needed to have saving functionality and be able to list and display all of the current users boards. 

- Create and edit Pins 

![](https://github.com/maisiejillbt/pinterest_clone/blob/073475c786fe1021c83b7f1f18ca2ad201d56d20/app/assets/images/Screen%20Shot%202021-11-11%20at%209.03.51%20PM.png)

![](https://github.com/maisiejillbt/pinterest_clone/blob/073475c786fe1021c83b7f1f18ca2ad201d56d20/app/assets/images/Screen%20Shot%202021-11-11%20at%209.04.12%20PM.png)


# Technologies Used 

  - Javascript
  - Ruby on Rails
  - React / Redux
  - PostgreSQL
  - AWS (S3, IAM)
  - HTML 
  - CSS


# Future Edits 

  - Edit home page to have both a loading screen and a staggered appearence. 
