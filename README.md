# Rails 8 Boilerplate

A minimal Ruby on Rails 8 application with no bloat.

## Setup

1. Install dependencies:
   ```bash
   bundle install
   ```

2. Setup database:
   ```bash
   rails db:create db:migrate
   ```

3. Start the server:
   ```bash
   rails server
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
