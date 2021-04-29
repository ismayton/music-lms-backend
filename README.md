# README

This is a Rails API serving as a backend for the Music LMS React.js frontend.

Run `bundle install` to install dependancies. After that, [initialize the database](Database-initialization) and start up the server with `rails s` (the backend server is set to run on http://localhost:3001 to not overlap the local frontend server).
## Music LMS Frontend Deployment

This repository serves as the backend API for the Music LMS Frontend, which lives in a separate repository. To run the complete app, fork music-lms-frontend from https://github.com/ismayton/music-lms-frontend. 

Start up the backend server with `rails s`. When the server is running, open the frontend repository and run `npm start` to start the frontend server.

### Ruby version
Ruby version 2.6.1
Rails version 6.0.3.6

### Database initialization
To initialize the database, run `rails db:migrate`. 

The seed file at db/seeds.rb contains some basic user seeds and seeds for a teacher and two courses from Horn Hippie Media. To initialize these seeds, run `rails db:seed`.

### Database Configuration
To make changes to the initial population of the database, simply update the seed file at db/seeds.rb and run `rails db:reset`.