# Sample RESTful API for Psychiatrists and Patients Records build with Node.js, Express.js, and MySQL

Welcome to our RESTful API built with Node.js, Express.js, and MySQL! This project serves as a template and guide for creating a robust and scalable API for your applications. The stack chosen provides a powerful combination of a server-side JavaScript runtime, a fast and minimalist web framework, and a reliable relational database for seamless data storage and retrieval.

## Major Libraries/ Frameworks used

- **Node.js:** Leverage the efficiency and speed of the Node.js runtime for building scalable and high-performance server-side applications.

- **Express.js:** Utilize the simplicity and flexibility of Express.js to define and organize routes, handle middleware, and manage HTTP requests with ease.

- **MySQL2:** Store and retrieve data reliably using the MySQL database. Benefit from the power of a robust relational database management system.

- **Bcrypt:** For encrypting the password.

## Getting Started

To get started with the API, follow these steps:

1. **Clone the Repository:**
   ```bash
   git clone https://github.com/Sachin-251/psychiatrists_api.git
   cd your-repository
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

