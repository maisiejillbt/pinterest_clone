# 10/29/21 
- had a difficult bug where there were no console errors but nothing within my webpack was rendering, the solution was to update my webpack config --- my output path was wrong, and was setup for a frontend only app 

# 10/30/21 

- completed sign up portion of user auth 
- learned to always push as soon as a function works 
- found out that rails requires its user auth to have a username fld 
  - I ended up having to tie my email and username flds together this way rails will accept a login without a username, I'm planning on making a function to update username to the users choice when I get to the settings portion. there is no username prompt during sign up. 

# 10/31/21

- completed login portion of user auth 
- wrote out protected and auth route components 
- Found out I don't need to refrence "username" during login which is a big plus, would like to be able to login with username or password, but I know that is going to require a lot of restrictions added to usernames, this might be a post due date add on. 
- read more documentation on react routes and figured out how to include the header in all pages



# 11/01/21 
### TODO 
  - figure out how to trigger a re-render of the header when the current user changes ( likely change nav bar to class component)
  - ask about css and what connection package we'll be using 
  - start / finish landing page 

- figured out render issue, I had a mispelling of current_user in my backend 
- **a new priority is to fix all the different spellings of current_user/currentUser to be appropriate for fe/be**

      ### change of plans for 11/01/21 
        - now working on pushing to heruku and setting up AWS (this could take the whole day)
- ended up only working on heroku deploy and aws, aws is still not set up (very complicated)
- Im glad I at least got my bugs fixed, my demo user built out and heroku deployed. 


# 11/02/21
### TODO 
  - finish aws setup ✅
  - build out logged out landing page 
  - if time start on boards and pins ✅

- well I got literally none of that done today.. What I did get done was I added the user avatar(changes when not provided a default), made a massive seeds file, started on boards and pins and mostly figured out aws. Realizing that wanting to start on front end stuff now, without my backend functionality is pretty pointless. 

# 11/03/21

### TODO
  - set up front end routes for boards and pins ✅
  - set up create pin and create board forms 1/2✅
  - get photos to render on page from aws (do this after forms)✅

- got everything on my list done today, but still workign on getting my edit post form working properly, hading difficulty getting the post to return to the state with fetch post. 

# 11/04/21
  ### TODO 
    - finish update pin form ✅
    - add photos to 20 pins 1/2 done (I want to add the photos to the seeds file)
    - make create board and edit board forms (I only made create lol)✅
    - start mapping out styling and finish styling PIN ✅

- I feel pretty good about progress today, I learned a lot about jbuilder and how it functions. 
- spent the most time today figuring out what the best way to send the posts up with the boards is 

# 11/05/21 
  ### TODO 
    - make update board form ✅
    - start adding photos into seeds file ✅
    - style login modals (login, signup, edits)
    - make users/userid page (profile)
    - connect all already made buttons 
    - start logged-out landing page 
