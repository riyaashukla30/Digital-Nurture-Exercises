Account Microservice

This is a simple Spring Boot Microservice for managing account details.

🚀 Features
Get account details using REST API
Built using Spring Boot
Runs on port 8080
🔗 API Endpoint
GET /accounts/{number}
Example:
http://localhost:8080/accounts/123
Response:
{
  "number": "123",
  "type": "savings",
  "balance": 234343
}
🛠 Tech Stack
Java
Spring Boot
Maven
