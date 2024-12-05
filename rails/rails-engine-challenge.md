# Solana Wallet Rails Engine Assessment

## Overview
Create a Rails Engine that provides Solana wallet functionality including wallet generation, balance checking, and transaction history.

- Difficulty: Hard
- Time: 6-8 hours
- Description: Create a mountable Rails engine for Solana wallet functionality. Tests understanding of Rails engines, cryptographic principles, and API design. Requires knowledge of both Ruby and blockchain concepts.

## Engine Functionality
1. Generate BIP39 mnemonic phrases
2. Derive Solana wallet addresses
3. Check SOL balances
4. Fetch transaction history
5. Generate QR codes for addresses

## Required Implementation

### Engine Structure
```ruby
module SolanaWallet
  class Engine < ::Rails::Engine
    isolate_namespace SolanaWallet
    
    config.generators do |g|
      g.test_framework :rspec
    end
  end
end
```

## Test Requirements
1. Unit tests for wallet generation
2. Integration tests with Solana devnet
3. Mock responses for mainnet data
4. QR code generation tests

## Submission Guidelines
1. Fork repository
2. Create `submission` branch
3. Include documentation for:
   - Installation
   - Usage examples
   - Configuration
4. Create pull request

## Evaluation Criteria
- Implementation of Solana functionality
- Security practices
- Test coverage
- Error handling
- Documentation quality