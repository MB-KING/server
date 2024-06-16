
# Course Management API

This is a simple API for managing courses, teachers, and booklets using Node.js, Express, and MySQL.

## Features

- **Find Courses**: Search for courses by name.
- **Find Course Teachers**: Get the list of teachers for a specific course.
- **Find Course Booklets**: Retrieve booklets for a specific course and teacher.

## Installation

1. Clone the repository:

2. Install the dependencies:
   ```bash
   npm install
   ```

3. Create a `.env` file in the root directory and add your database configuration:
   ```
   DB_HOST=your-database-host
   DB_USER=your-database-user
   DB_PASS=your-database-password
   DB_NAME=your-database-name
   APP_PORT=your-app-port
   ```

4. Start the server:
   ```bash
   npm start
   ```

## Endpoints

### Find Courses

- **URL**: `/api/findCourses`
- **Method**: `GET`
- **Query Parameters**: `courseName` (string)
- **Response**:
  ```json
  {
    "message": "find courses successfully!",
    "courses": [...]
  }
  ```

### Find Course Teachers

- **URL**: `/api/findCourseTeachers`
- **Method**: `GET`
- **Query Parameters**: `courseId` (number)
- **Response**:
  ```json
  {
    "message": "find teachers successfully!",
    "teachers": [...]
  }
  ```

### Find Course Booklets

- **URL**: `/api/findCourseBooklets`
- **Method**: `GET`
- **Query Parameters**: `courseId` (number), `teacherId` (number)
- **Response**:
  ```json
  {
    "message": "find booklet successfully!",
    "booklets": [...]
  }
  ```

## Security Improvements

- Parameterized queries to prevent SQL Injection.
- Helmet middleware for enhanced HTTP security.
- Error handling improvements.
- SSL enabled for secure database connections.

## License

This project is licensed under the MIT License.
