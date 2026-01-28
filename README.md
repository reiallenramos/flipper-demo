# Rails 8 - Flipper demo

A minimal Ruby on Rails 8 application with the [Flipper gem](https://github.com/flippercloud/flipper) for demo

## Clone
1. Clone this repo then cd into the directory
   ```bash
   git clone git@github.com:reiallenramos/flipper-demo.git
   cd flipper-demo
   ```

## Prerequisites
1. Ruby 3.3.0
   ```bash
   rbenv install 3.3.0
   ```

## Setup

1. Install dependencies:
   ```bash
   bundle install
   ```

2. Setup database:
   ```bash
   bundle exec rails db:create db:migrate
   ```

3. Start the server:
   ```bash
   bundle exec rails server
   ```

4. Visit http://localhost:3000

## What's Included

- Rails 8.0.4
- SQLite3 database
- Puma web server
- Propshaft for asset management
- Minimal configuration with no unnecessary gems

## What's Removed

- JavaScript framework (Hotwire, Turbo, Stimulus)
- Testing framework
- Job queues
- Action Mailer
- Active Storage
- Action Cable
- PWA files
- Development gems (RuboCop, Brakeman, etc.)

## Health Check

Visit `/up` to check if the application is running properly.
