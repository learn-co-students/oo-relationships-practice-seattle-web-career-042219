Level: Hard
Deliverables
You are building the next big crowdfunding site. Users can make projects and fund projects. Oh the projects!

your models are users, projects and pledges
a project will have a pledge goal amount
a user can both create and back projects, so a user will have multiple connections to projects based on those different roles
Write out the relationships using has_many, belongs_to and has_many_through. Write out a schema that shows what these tables might look like in a database. Where would the foreign keys live? Then build out methods reflecting all these relationships. What method can I call on a user to find other users who have backed his/her projects, etc?

### User
[x] .highest_pledge
returns the user who has made the highest pledge
[x].multi_pledger
returns all users who have pledged to multiple projects
[x].project_creator
returns all users who have created a project

### Project
[x].no_pledges
returns all projects which have no pledges yet
[x].above_goal
returns all projects which have met or exceeded their pledge goal
[x].most_backers
returns the project with the highest number of backers

### Pledge
[x] #project
returns the project associated with a particular pledge
[x] #user
returns the user associated with a particular pledge