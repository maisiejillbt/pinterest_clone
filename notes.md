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

