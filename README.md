# Continental Cookbook Collection

## An explanation of the what the app does and how it works.
RecipEATs is a cloud-based web application for new-age cooks to organize all their recipes in their own, individual recipe book to help them consolidate their multi-generational family recipes and favorite random online recipes in one place. Using React.js, the user is able create an account with email and password, that only they can see. From there, they can create “Recipes” in their cookbook and add it to their Ruby on Rails database. These “Recipes” can be updated with new “titles” or “servings”, and many other categories. If the user no longer has passion for one of their recipes, they can also delete the recipe completely. While accessing their account, they can change their passwords and then ultimately log out so they can go have a fun time cooking!

## A link to the other repo
Front-end Repository: https://github.com/jaemcu/RecipEATS-client

## A link to both deployed sites
Client: https://jaemcu.github.io/RecipEATS-client/#/

Heroku API: https://immense-mountain-49201.herokuapp.com/

## List of technologies used
Ruby on Rails

## List unsolved problems which would be fixed in future iterations.
Add continental relationship to recipes.

## Document your planning, process and problem-solving strategy
1. Generated User Resource
2. Generated Recipe Resource
3. Added relationship of these two resources
4. Created path for Index, Show
5. Created path for Post
6. Created path for PATCH
7. Messages for CRUD paths
8. Failure messages for create and PATCH
9. commented out testing env console.logs

## Link to Entity Relationship Diagram (ERD).
Users |---< Recipes

## A catalog of routes (paths and methods) that the API expects.
verb	path	parameters
POST	/sign-up	credentials with email, password, and password_confirmation
POST	/sign-in	credentials with email, and password
PATCH	/change-password	AUTH passwords with old and new
DELETE	/sign-out	Auth
GET	/recipes	Auth
GET	/recipes/:id	AUTH
PATCH	/recipes/:id	AUTH, OWNER recipes with title, time, serving, ingredients and instructions
DELETE	/recipes/:id	AUTH, OWNER

## Set up and installation instructions for back end application
Setup your database:
- bin/rails db:drop (if it already exists)
- bin/rails db:create
- bin/rails db:migrate
- bin/rails db:seed
- bin/rails db:examples
Note: Do this for each database you want to set up. Your local database and production (Heroku) database will both need to be set up in this way!

Run your server!
Run the API server with bin/rails server or bundle exec rails server.
