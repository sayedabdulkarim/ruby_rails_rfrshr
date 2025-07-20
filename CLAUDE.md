# CLAUDE.md

This file provides guidance to Claude Code (claude.ai/code) when working with code in this repository.

## Project Overview

This is a Ruby on Rails 8.0.2 application using SQLite3 database and modern Rails conventions including Hotwire (Turbo + Stimulus) for frontend interactions. The application manages employees and their documents with user authentication via Devise.

## Essential Commands

### Setup & Installation
```bash
bin/setup              # Complete setup: installs dependencies, prepares database
```

### Development Server
```bash
bin/dev                # Start development server
bin/rails server       # Alternative server start
```

### Database Operations
```bash
bin/rails db:migrate   # Run pending migrations
bin/rails db:prepare   # Create, migrate, and seed database
bin/rails db:reset     # Drop, recreate, migrate, and seed
```

### Testing
```bash
bin/rails test         # Run all tests except system tests
bin/rails test:db      # Reset test database and run tests
bin/rails test test/models/user_test.rb  # Run specific test file
```

### Code Quality
```bash
bin/rubocop            # Check Ruby code style
bin/brakeman           # Scan for security vulnerabilities
```

### Deployment
```bash
bin/kamal deploy       # Deploy with Docker via Kamal
```

## Architecture & Structure

### Core Models
- **Employee**: Has many documents, validates first_name and last_name
- **Document**: Belongs to employee, has attached image via Active Storage
- **User**: Devise authentication model

### Key Features
1. **Authentication**: Devise handles user sign up/login at `/users/sign_in`
2. **File Uploads**: Active Storage for document images
3. **Frontend**: Hotwire (Turbo + Stimulus) with Import Maps (no build step)
4. **Caching**: Solid Cache, Queue, and Cable database adapters

### Database
- SQLite3 for all environments
- Files stored in `storage/` directory
- Multi-database setup in production (main, cache, queue, cable)

### Testing Framework
- Minitest (default Rails testing)
- Capybara + Selenium for system tests
- Fixtures for test data