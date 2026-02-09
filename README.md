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

3. Start the application:
   - In one terminal, start the Rails server:
     ```bash
     bundle exec rails server
     ```
   - In another terminal, start the Solid Queue worker:
     ```bash
     bundle exec rails solid_queue:start
     ```

4. Visit http://localhost:3000

## Features Demo

- **Flipper Feature Flags**: Managed via ActiveRecord adapter.
- **Background Jobs**: Uses [Solid Queue](https://github.com/rails/solid_queue) for database-backed background job processing.
- **Mission Control**: Visualize and manage jobs at `/mission_control`.
- **User-Specific Toggling**: 
  - Navigate to `/demo/users` to see a list of users.
  - Clicking "Toggle" enqueues `MyJob` to asynchronously enable/disable the `:search` feature for that user using `Flipper.toggle`.
  - The UI updates status indicators (checkmark for enabled, crossmark for disabled) after the job completes and the page is refreshed.

## What's Included

- Rails 8.0.4
- SQLite3 database
- Puma web server
- Propshaft for asset management
- **Flipper** (ActiveRecord adapter + UI)
- **Solid Queue** for background jobs
- **Mission Control - Jobs** for job management

## What's Removed

- JavaScript framework (Hotwire, Turbo, Stimulus) - *Uses standard Rails forms/redirects*
- Testing framework
- Action Mailer
- Active Storage
- Action Cable
- PWA files
- Development gems (RuboCop, Brakeman, etc.)

## Important Endpoints

- `/`: Home
- `/demo/users`: User feature toggle demo
- `/flipper`: Flipper UI for manual flag management
- `/mission_control`: Job management dashboard
- `/up`: Health check
