# Account Microservice

Simple Spring Boot project to fetch account details.

## API

GET /accounts/{number}

Example:
http://localhost:8080/accounts/123

Response:
{
  "number": "123",
  "type": "savings",
  "balance": 234343
}

## Tech Used
- Java
- Spring Boot
- Maven
