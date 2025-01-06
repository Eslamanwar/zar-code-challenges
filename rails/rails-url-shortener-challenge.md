# URL Shortener Project

Build a URL shortening service similar to bit.ly that takes long URLs and converts them into shorter, more manageable URLs.

## Core Requirements

### Features

- Create a shortened URL from a given long URL
- Redirect users from shortened URL to original URL
- Track basic analytics (number of visits per URL)
- List all shortened URLs with their analytics

### Technical Requirements

- RESTful API endpoints
- Database persistence (PostgreSQL preferred)
- Tests for all functionality
- Reasonable error handling
- Clean, well-documented code

## Getting Started

1. Initialize a new Rails project:

```bash
rails new url-shortener --database=postgresql
cd url-shortener
```

2. Create necessary git branches and make initial commit
3. Set up testing environment (RSpec, etc.)
4. Begin implementing features

## Discussion Points

As we build this application, we'll discuss:

### Architecture & Design

- URL shortening algorithm choices
- Database schema design
- API endpoint structure
- Service object patterns
- Handling edge cases

### Testing

- Test-driven development approach
- Unit vs Integration testing
- Test organization and best practices
- Coverage considerations

### Performance & Scaling

- Database indexing
- Caching strategies
- Handling concurrent requests
- Potential bottlenecks

## Evaluation Areas

- Code organization and architecture decisions
- Testing approach and coverage
- SQL and database design
- Error handling and edge cases
- Code quality and readability
- Problem-solving approach
- Communication and collaboration

## Bonus Features (if time permits)

- Custom URL slugs
- URL expiration
- Basic authentication
- More detailed analytics (referrer, timestamp, etc.)

## API Endpoints (suggested)

```
POST   /api/urls          # Create shortened URL
GET    /api/urls          # List all URLs
GET    /api/urls/:id      # Get URL details with analytics
GET    /:short_url        # Redirect to original URL
```
