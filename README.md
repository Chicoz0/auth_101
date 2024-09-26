# README

# User Authentication System

This project is a user authentication system developed with Ruby on Rails. It includes features for user registration, managing sessions, password reset with mailer, and other authentication-related operations.

## Features

- User registration
- User login
- User logout
- Password reset with mailer support

## Requirements

- Ruby 3.3.4
- Rails 7.2.1
- Database: SQLite3

## Installation

1. Clone the repository:

   ```sh
   git clone https://github.com/Chicoz0/auth_101
   cd auth_101

2. Install dependencies:

  ```sh
  bundle install

3. Set up the database:

  ```sh
  rails db:create
  rails db:migrate

4. Start the server:

  ```sh
  rails server

5. Access the application at http://localhost:3000.

## Contribution

1. Fork the project.
2. Create a new branch (git checkout -b feature/new-feature).
3. Commit your changes (git commit -am 'Add new feature').
4. Push to the branch (git push origin feature/new-feature).
5. Create a new Pull Request.

## Dependencies

### Ruby Gems
- `bcrypt (~> 3.1.7)`
- `rails (~> 7.2.1)`
- `sprockets-rails`
- `sqlite3 (>= 1.4)`
- `puma (>= 5.0)`
- `importmap-rails`
- `turbo-rails`
- `stimulus-rails`
- `jbuilder`

### Installation (dependencies)

1. Install Ruby dependencies:

   ```sh
   bundle install

2. Install JavaScript dependencies:

  ```sh
  yarn install

3. (Ubuntu) System Dependencies

  ```sh
  sudo apt-get update
  sudo apt-get install -y ruby-full sqlite3 libsqlite3-dev nodejs yarn