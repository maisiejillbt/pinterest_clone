# Overview 

Twinterest is a fullstack clone based on Pinterest. Pinterest is an image-based social media network where users and businesses can promote and explore their interests by pinning images and videos on virtual bulletin boards. With Twinterest users are able to follow eachother, add pins to their boards, create and edit new pins and boards, and view all other users pins. 

# [View the live site here!](https://tw1nterest.herokuapp.com/)

If you're a current AA student looking for help or inspiration, feel free to reach out to me on Slack @Maisie Bruno-Tyne

## Features 

- Account Creation and Authentication 

![](https://github.com/maisiejillbt/pinterest_clone/blob/0b71af5ffae54642c68ab1efbdfddf026ee68a30/app/assets/images/Screen%20Shot%202021-11-11%20at%209.02.10%20PM.png)

![](https://github.com/maisiejillbt/pinterest_clone/blob/afe085b04a5756e4dbfff5e601bf90c9471be592/app/assets/images/Screen%20Shot%202021-12-12%20at%202.27.17%20PM.png)

One of my main goals for Twinterest was to stick to the design of Pinterest as closely as possible. Making sure to measure and adjust my cloned site as needed. For me the appearence of the page is just as important as the functionality. 

- View Pins with Infinite Scroll

![](https://github.com/maisiejillbt/pinterest_clone/blob/afe085b04a5756e4dbfff5e601bf90c9471be592/app/assets/images/twinHomepageSmall.gif)

Displaying Pins in a staggered order while maintaining a constant stacking order for pins was a fun challenge. 

It took me a while to come up with how I would implement the staggered look of the Pins. The most important things for me were maintaining the stacking order when changing screen size, and adding a new row, as well as setting myself up for future edits where I will make the unlimited scroll implement one pin at a time, from shortest to longest column. This immediately meant that using one large flexbox was not an option. I did consider using one flexbox for each row, and rendering the pins in each depending on a column properts. However, realized that with the infinite scroll and the loading time on the photos, I may end up triggering my scroll handler before photos have loaded, and in the process have many photos all loading to the page in different palces at different times. 

This brought me to the conculsion that I should use a combination of the "onLoad" event and a set "transform" style property for each Pin. I implemented this by calling my newRow function first to render a row of pins to the DOM, and then triggering my columnLoaded function to update the state whenever a Pins image has completely loaded on the page. Finally I get the actual rendered height of the pin object and add it to the class variable of its column height in setPreviousRow.

``` javascript 
    newRow(pins){
        const boards = this.props.boards;
        let pinArray = []; 
        let x = 0;
        
        // generating new pin objects from pins prop
        for(let i=0; i < pins.length; i++){
            let colors = ["#FFAC81", "#FF928B","#FEC3A6",
                          "#EFE9AE","#CDEAC0","#2DC7FF",
                          "#A997DF","#533B4D","#393E41"];
            let color = colors[Math.floor(Math.random() * colors.length)];
            let y = this[`col${i+1}`];
            let pin = pins[i];
            let style = {
                transform: `translate(${x}px, ${y}px)`,
                zIndex:'1'
            }; 
            pinArray.push(
                <Pin 
                    pin={pin} 
                    key={pin.id} 
                    boards={boards} 
                    toggle={this.props.toggle}
                    style={style}
                    loaded={this.columnLoaded}
                    column={i+1}
                    bgColor={color}
                />
                )
            x += 252;
            }
        // adding to pin state for rendering
        // updating num rows
        // CDU for initial rendering of rows will be triggered from this update
        // to load initial rows of pins
        this.setState({
            pins: [...this.state.pins, ...pinArray],
            numRows: this.state.numRows + 1,
        });
    }
    
    columnLoaded(id, column){
        // setting state upon column image rendering
        const columns = {...this.state.columnsRendered, ...{[column]: true}};
        const rendered = Object.values(columns).every((v) => v === true)
        this.setState({
            columnsRendered: columns,
            rowRendered: rendered,
        });
    }
    
    setPreviousRow(){ 
        const previousRowStart = (this.state.pins.length - this.state.numCols);
        const previousRowend = this.state.pins.length; 
        const newRowEnd = this.state.pins.length + this.state.numCols; 
        const pins = this.pins; 
        const prevPins = pins.slice(previousRowStart,previousRowend);
        const newPins = newRowEnd > this.pins.length ? pins.slice(previousRowend) : pins.slice(previousRowend, newRowEnd);

        if(this.state.rowRendered){
            // adding previous pins height to total column height
            for(let i=0; i < this.state.numCols; i++){
                const pinId = prevPins[i].id; 
                const pin = document.getElementById(pinId);
                if(pin){
                    const pinHeight = pin.offsetHeight;
                    this[`col${i+1}`] += pinHeight;
                }
            }
            // calling new row to set up initial 3 rows 
            if(this.state.numRows < 3 || this.atBottom){
                this.newRow(newPins);
            }
            // adding event listener for infinite scroll
            if(this.state.numRows === 2){
                window.addEventListener('scroll', this.infiniteScrollHandler);
            }  
            // rowRendered as condit for if setPreviousRow can be run again
            const rendered = {};
            Object.keys(this.state.columnsRendered).forEach(v => rendered[v] = false);

            this.setState({ 
                rowRendered: false,
                columnsRendered: rendered,
            })
        }
    } 

```

- View User profiles 

![](https://github.com/maisiejillbt/pinterest_clone/blob/afe085b04a5756e4dbfff5e601bf90c9471be592/app/assets/images/Screen%20Shot%202021-12-12%20at%202.29.02%20PM.png)

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

  - Make infinite scroll load one image at a time, on the shortest current column. 
