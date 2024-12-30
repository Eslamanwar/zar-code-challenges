# QA Engineer Code Challenge

## Objective
The goal of this challenge is to assess your ability to write clean, understandable, and maintainable test automation scripts. You will focus on **end-to-end (E2E)** and **regression testing** scenarios for an existing public API.

You will use the [ReqRes API](https://reqres.in/), a mock REST API, to complete this challenge. The task is to validate core functionalities of the API with a focus on real-world workflows and regression scenarios.

---

## Challenge Overview

You are tasked with creating an automated test suite to validate key features of the ReqRes API. Your test suite should include the following:

1. **End-to-End Tests**
   - Test end-to-end workflows that simulate real-world API usage.

2. **Regression Tests**
   - Test critical functionalities to ensure they behave as expected across versions or updates.
   - Simulate regression scenarios by defining baseline expectations for API responses and validating consistency over multiple test runs.

3. **Clean and Maintainable Code**
   - Ensure your code is modular, reusable, and easy to understand.

---

## API Documentation
The API you will be testing is documented here: [ReqRes API Documentation](https://reqres.in/).

### Key Endpoints to Test

#### 1. Authentication
- **Endpoint:** `POST /login`
- **Description:** Validates user login credentials.
- **Example Payload:**
  ```json
  {
    "email": "eve.holt@reqres.in",
    "password": "cityslicka"
  }
  ```
- **Expected Behavior:**
  - Returns a token for valid credentials.
  - Returns an error message for invalid or missing fields.

#### 2. User Retrieval
- **Endpoint:** `GET /users?page=2`
- **Description:** Retrieves a list of users.
- **Expected Behavior:**
  - Response includes a paginated list of users.
  - Each user should have an `id`, `email`, `first_name`, and `last_name`.

#### 3. User Creation
- **Endpoint:** `POST /users`
- **Description:** Creates a new user.
- **Example Payload:**
  ```json
  {
    "name": "morpheus",
    "job": "leader"
  }
  ```
- **Expected Behavior:**
  - Returns a `201` status code with the newly created user’s `id` and `createdAt` timestamp.

#### 4. User Update
- **Endpoint:** `PUT /users/2`
- **Description:** Updates an existing user.
- **Example Payload:**
  ```json
  {
    "name": "morpheus",
    "job": "zion resident"
  }
  ```
- **Expected Behavior:**
  - Returns a `200` status code with updated fields.

#### 5. User Deletion
- **Endpoint:** `DELETE /users/2`
- **Description:** Deletes a user.
- **Expected Behavior:**
  - Returns a `204` status code.

---

## Requirements

### 1. **Test Scenarios**
- Design test scenarios for the above endpoints that include:
  - **Positive Tests:** Validate the happy path (e.g., successful login, valid user creation).
  - **Negative Tests:** Validate error handling (e.g., invalid credentials, missing fields, non-existent users).
  - **Boundary Tests:** Explore edge cases (e.g., very large payloads, unexpected data formats).

### 2. **Regression Testing Goals**
To simulate regression testing with the ReqRes API:
- Define a **baseline** for each critical endpoint’s expected responses. For example:
  - Expected status codes (e.g., `200` for `GET /users?page=2`).
  - Response structure and key values (e.g., `page`, `per_page`, `data` for `GET /users`).
- Validate that the API adheres to this baseline consistently across multiple test runs.
- Incorporate assertions to compare live API responses against saved baseline data (e.g., snapshots or hardcoded values).
- Highlight any deviations from the baseline as potential regressions.

### 3. **Automation Framework**
- Use a framework of your choice (e.g., Pytest, RestAssured, Mocha, Postman).
- Ensure the framework supports modular test organization and reporting.

### 4. **Code Quality**
- Write clean, reusable, and modular code.
- Include comments where necessary to explain complex logic.
- Ensure proper error handling and assertions.

### 5. **Deliverables**
- **Test Scripts:** Submit the test scripts in a structured format (e.g., a Git repository or ZIP file).
- **README File:** Include a `README.md` that explains:
  - How to set up and run the tests.
  - Any dependencies or prerequisites.
  - Overview of your test scenarios.
- **Test Report:** If possible, provide a test execution report or logs to show the results of your tests.

---

## Evaluation Criteria

### 1. **Test Coverage**
- Have you covered the key scenarios, including positive, negative, and boundary tests?

### 2. **Regression Validation**
- Have you successfully defined and validated baseline expectations for critical endpoints?
- Do your tests consistently identify deviations from the baseline?

### 3. **Code Quality**
- Is the code well-organized, modular, and easy to understand?
- Are appropriate assertions and error handling implemented?

### 4. **Maintainability**
- Is the test suite easy to extend or modify for additional scenarios?

### 5. **Execution and Reporting**
- Do the tests run as expected?
- Is there clear documentation and reporting of the test results?

---

## Suggested Tools

- **Python:** Pytest with `requests`
- **Java:** RestAssured
- **JavaScript:** Mocha/Chai or Jest with Axios
- **Postman:** Postman collections and Newman for execution

---

## Submission Instructions
1. Complete the challenge and ensure all test scripts are properly structured.
2. Include a `README.md` with instructions on how to run the tests.
3. Submit your work via a GitHub repository link or a ZIP file.

---

Thank you for your effort and time. We look forward to reviewing your submission!
