# Flutter Developer Technical Assessment

## Overview
Build a mobile wallet application that generates wallets, displays cryptocurrency balances and transaction history, following Material Design guidelines.

- Difficulty: Medium
- Time: 4-6 hours
- Description: Build a mobile cryptocurrency wallet that demonstrates proficiency with Flutter, state management, and secure storage. Tests UI/UX skills and understanding of wallet generation fundamentals.

## Requirements

### Core Features
1. Generate BIP39 mnemonic phrase and derive wallet
2. Display generated wallet address and QR code
3. Display wallet balance in USD and crypto
4. Show transaction history with filtering capabilities
5. Handle offline mode gracefully

### Technical Requirements
1. State Management: Use either Riverpod or BLoC
2. API Integration: Mock API responses using local JSON files
3. Material Design implementation
4. Secure storage for mnemonic phrase
5. Tests: Unit tests for business logic and widget tests for core features

### API Specification
```json
// GET /api/balance
{
  "balance": "1234.56",
  "currency": "USD",
  "crypto_balances": [
    {
      "symbol": "BTC",
      "amount": "0.5",
      "usd_value": "20000"
    }
  ]
}

// GET /api/transactions
{
  "transactions": [
    {
      "id": "tx123",
      "type": "SEND",
      "amount": "0.1",
      "currency": "BTC",
      "timestamp": "2024-12-05T10:00:00Z",
      "status": "COMPLETED"
    }
  ]
}

// Wallet Structure
{
  "mnemonic": "24 word phrase",
  "address": "wallet_address",
  "derivation_path": "m/44'/0'/0'/0/0"
}
```

## Submission Guidelines
1. Fork the repository
2. Create a new branch called `submission` in your fork
3. Implement the required features
4. Upload compiled APK to Google Drive and share the link with sebastian@zarpay.app
5. Include README with:
   - Setup instructions
   - Architecture decisions
   - Testing approach
   - Security considerations
6. Create pull request from your `submission` branch

## Time Expectation
- 4-6 hours
- Submit within 5 days

## Bonus Points
- Offline-first architecture
- Animations and transitions
- BIP39 passphrase support
