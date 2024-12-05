# Solana Program Development Assessment

## Overview
Build a Solana program for a simple token vesting contract.

- Difficulty: Medium-Hard
- Time: 4-6 hours
- Description: Develop a Solana program for token vesting with a TypeScript SDK. Tests Rust programming, Solana development concepts, and client SDK design.

## Requirements
1. Token vesting program with time-based unlocks
2. Unit tests
3. Integration tests with local validator
4. Client SDK in TypeScript

## Program Features
```rust
// State accounts
pub struct VestingSchedule {
    pub beneficiary: Pubkey,
    pub total_amount: u64,
    pub start_timestamp: i64,
    pub period_length: i64,
    pub num_periods: u64,
    pub claimed_amounts: u64,
}

// Instructions
- Initialize vesting schedule
- Claim vested tokens
- Get claimable amount
```

## Required Implementation
1. Program logic in Rust
2. Error handling
3. Proper access controls
4. TypeScript client
5. Local testing environment

## Test Requirements
1. Unit tests for calculations
2. Integration tests using local validator
3. SDK tests

## Submission Guidelines
1. Fork repository
2. Create `submission` branch
3. Include:
   - Setup instructions
   - Test documentation
   - Program documentation
4. Create pull request

## Evaluation Criteria
- Program security
- Test coverage
- Error handling
- SDK usability
- Documentation quality