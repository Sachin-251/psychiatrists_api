# Sample RESTful API for Psychiatrists and Patients Records build with Node.js, Express.js, and MySQL

Welcome to our RESTful API built with Node.js, Express.js, and MySQL! This project serves as a template and guide for creating a robust and scalable API for your applications. The stack chosen provides a powerful combination of a server-side JavaScript runtime, a fast and minimalist web framework, and a reliable relational database for seamless data storage and retrieval.

## Major Libraries/ Frameworks used

- **Node.js:** Leverage the efficiency and speed of the Node.js runtime for building scalable and high-performance server-side applications.

- **Express.js:** Utilize the simplicity and flexibility of Express.js to define and organize routes, handle middleware, and manage HTTP requests with ease.

- **MySQL2:** Store and retrieve data reliably using the MySQL database. Benefit from the power of a robust relational database management system.

- **Bcrypt:** For encrypting the password.

## POSTMAN COLLECTION:
```bash
https://elements.getpostman.com/redirect?entityId=31406459-6ddf58fa-022d-46ff-984b-f7ce6e0d4dd0&entityType=collection
```

## Getting Started

To get started with the API, follow these steps:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Sachin-251/psychiatrists_api.git
   cd psychiatrists_api
   ```

2. **Install Dependencies**
   ```bash
   npm install
   ```

3. **Configure MySQL:**
- Create a MySQL database.
- Update the connect.js and .env file with your database credentials.

4. **Run the Application**
   ```bash
   npm start
   ```
   The API will be accessible at http://localhost:8000. You can customize the port and other configurations in the .env file.

## API Endpoints

- **POST /api/v1/patient**: Create a new patient
- **GET /api/v1/:hospitalId**: Fetch all the psychiatrists, their count along with IDs and patient details for a hospital.

## Contribution

If you find any issues or have suggestions for improvement, please open an issue or submit a pull request. We welcome contributions from the community!

Happy coding!


This introduction provides an overview of the technologies used, outlines the key features, and offers a guide for getting started with the API. It also includes a brief description of the available API endpoints and encourages contributions from the community. Adjust the content as needed for your specific project.
