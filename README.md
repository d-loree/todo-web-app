# Todo List Web Application

## Live View
Check it out on your web browser: [Todo Web Application](https://todo.dylanloree.ca/)

## Introduction
The Todo List Web Application is a Ruby on Rails project designed to help users manage their tasks efficiently. Users can create tasks and add detailed notes to each task. This project was developed as a learning exercise to gain a deeper understanding of Ruby on Rails and the Model-View-Controller framework. I created this web app while learning from documentation and YouTube tutorials.

## Prerequisites/Dependencies
Before you start, ensure you have met the following requirements:
- **Ruby 3.0.2**: Install guide: [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
- **Ruby on Rails 7**: Install guide: [Rails](https://guides.rubyonrails.org/getting_started.html)
- **PostgreSQL 14**: Install guide: [PostgreSQL](https://www.postgresql.org/download/).
- **Node.js 21**: Install using [Node Version Manager (nvm)] or download from [Node.js Downloads](https://nodejs.org/en/download)
- **Yarn**: Install guide: [Yarn](https://classic.yarnpkg.com/lang/en/docs/install/#debian-stable)
- **Bundler**: Install using `gem install bundler`

## Setup
Before starting the setup, ensure you have the required prerequisites/dependencies

### Download Files/Clone The Repository
Download the project files or clone the project repository to your local machine

### Install Ruby Dependencies
Inside the projects main directory (where 'Gemfile' is) run: `bundle install`


### Install JavaScript Dependencies
Inside the projects main directory (where 'package.json' is) run: `yarn install`


### Database Setup/Creation/Initialization
Setup Database Username by opening the file located at config/database.yml and replace 'username: dylan' with your postgres account username in the development and test section

Create Database: `rails db:create`

Initialize Database: `rails db:migrate`


### Running/Testing
Start the rails server using: `rails server`

