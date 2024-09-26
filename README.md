# README

# User Authentication System

This project is a user authentication system developed with Ruby on Rails. It includes features for user registration, managing sessions, password reset with mailer, and other authentication-related operations.

## Features

- User Registration: Allows new users to create accounts by providing necessary details such as email and password.
- Login/Logout Functionality: Enables users to securely log in and log out of their accounts.
- Password Encryption: Utilizes strong encryption algorithms to store passwords securely in the database.
- Email Confirmation: Sends confirmation emails to new users to verify their email addresses before activating their accounts.
- Password Reset: Provides users with the ability to reset their passwords via email in case they forget them.

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

## Contribution

1. Fork the project.
2. Create a new branch (git checkout -b feature/new-feature).
3. Commit your changes (git commit -am 'Add new feature').
4. Push to the branch (git push origin feature/new-feature).
5. Create a new Pull Request.

## Upcoming features

- Account Locking: Implements security measures to lock user accounts after a certain number of failed login attempts, protecting against brute force attacks.
- Role-Based Access Control (RBAC): Supports different user roles (e.g., admin, user) with varying levels of access permissions.
- Session Management: Manages user sessions securely to prevent unauthorized access and session hijacking.
- Two-Factor Authentication (2FA): Adds an extra layer of security by requiring a second form of verification during login.
- OAuth Integration: Allows users to log in using third-party services such as Google, Facebook, or GitHub.