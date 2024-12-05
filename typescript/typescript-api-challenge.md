# TypeScript Serverless API Assessment

## Overview
Build a serverless cryptocurrency payment processing API using AWS CDK and TypeScript.

- Difficulty: Hard
- Time: 6-8 hours
- Description: Implement a serverless payment processing API using AWS CDK and TypeScript. Tests cloud architecture knowledge, DynamoDB design, and API development skills.

## Core Requirements
1. Serverless REST API
2. DynamoDB for data storage
3. Rate limiting using API Gateway
4. Input validation
5. Infrastructure as Code using CDK

## Technical Specifications

### API Endpoints (API Gateway)
```typescript
// Users
POST /api/v1/users
GET /api/v1/users/{id}
GET /api/v1/users/{id}/payments

// Payment Processing
POST /api/v1/payments
GET /api/v1/payments/{id}
GET /api/v1/payments

// Rate Information
GET /api/v1/rates
GET /api/v1/rates/history
```

### Data Models
```typescript
interface User {
  pk: string; // userId
  sk: string; // USER#<id>
  email: string;
  createdAt: string;
  updatedAt: string;
}

interface Payment {
  pk: string; // userId
  sk: string; // PAYMENT#<timestamp>
  paymentId: string;
  amount: string;
  currency: string;
  status: 'pending' | 'completed' | 'failed';
  metadata: Record<string, unknown>;
}

interface Rate {
  pk: string; // RATE
  sk: string; // <pair>#<timestamp>
  pair: string;
  rate: string;
}
```

## Required Implementation
1. CDK stack definition
2. Lambda functions for each endpoint
3. DynamoDB single-table design
4. Input validation using Zod
5. Integration tests

## Infrastructure Requirements
```typescript
// Expected CDK constructs
- API Gateway
- Lambda functions
- DynamoDB table
- IAM roles
```

## Submission Guidelines
1. Fork repository
2. Create `submission` branch
3. Include:
   - CDK deployment instructions
   - API documentation
   - Test coverage report
4. Create pull request

## Evaluation Criteria
- Infrastructure design
- Code organization
- Type safety
- Test coverage
- Error handling
- Performance
- Documentation

## Time Expectation
- 4-6 hours
- Submit within 5 days

## Deployment
GitHub Actions workflow for:
1. Running tests
2. CDK diff
3. CDK deploy