# Flask Items API with Readiness Checks
This repository contains a simple Flask application with a REST API backed by SQLite, designed to demonstrate basic CRUD operations along with a readiness check endpoint suitable for containerized deployments.

## Features
- REST API to create and list items (/items).
- Readiness endpoint (/ready) to verify if the app and its database connection are healthy.
- Uses SQLite for simplicity — ideal for demo and small-scale use.
- Suitable for containerized environments (e.g., Kubernetes) with readiness probes.

## Architectural Overview
- Flask: Lightweight Python web framework for fast prototyping and API creation.
- SQLite: Embedded, file-based SQL database chosen for simplicity and zero configuration.
- Readiness Check: Implements a /ready endpoint to perform a lightweight DB connectivity check. This is crucial in orchestrated environments (like Kubernetes) to ensure the app only receives traffic when fully ready to serve.
- Separation of Concerns: API routes are simple and stateless except for the database session.
- Scalability Consideration: For production or scaling, you’d replace SQLite with a full RDBMS (PostgreSQL, MySQL) and add more sophisticated health checks.

## Prerequisites
- Python 3.12.3 or higher
- pip package manager

## Notes and Recommendations
- SQLite is not recommended for production multi-instance setups because it’s file-based and not designed for concurrent writes across replicas.
- For production, switch to PostgreSQL or MySQL with proper connection pooling.
- The readiness endpoint can be extended to check other dependencies (e.g., caches, external APIs).
- Add liveness probes in Kubernetes to restart unhealthy pods automatically.
- Add logging, monitoring, and metrics for better observability.

## Troubleshooting
- If the /ready endpoint returns 503, check database connectivity.
- Make sure your environment variables and database file permissions are set correctly.
- In Docker/Kubernetes, verify that ports and network policies allow traffic.
