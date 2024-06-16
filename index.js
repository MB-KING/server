const express = require("express");
const app = express();
const cors = require("cors");
const mysql = require("mysql");
const helmet = require("helmet");
require("dotenv").config();
const persianJs = require("persianjs");

app.use(cors());
app.use(helmet());

const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
  ssl: {
    rejectUnauthorized: true, 
  }
});

connection.connect(function (err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});

app.get("/api/findCourses", (req, res) => {
  const courseId = persianJs(req.query.courseName).arabicChar().toString();
  const sql = `SELECT * FROM courses WHERE Course_Name LIKE ?`;
  const queryValue = `%${courseId}%`;

  connection.query(sql, [queryValue], (error, results, fields) => {
    if (error) {
      return res.status(500).json({ message: error.message });
    }
    res.status(200).send({ message: "find courses successfully!", courses: results });
  });
});

app.get("/api/findCourseTeachers", (req, res) => {
  const courseId = req.query.courseId;
  const sql = `
    SELECT course_teachers.Course_Id, course_teachers.Teacher_Id, teachers.Teacher_Name
    FROM course_teachers
    LEFT JOIN teachers ON course_teachers.Teacher_Id = teachers.Teacher_Id
    WHERE Course_Id = ?
  `;

  connection.query(sql, [courseId], (error, results, fields) => {
    if (error) {
      return res.status(500).json({ message: error.message });
    }
    res.status(200).send({ message: "find teachers successfully!", teachers: results });
  });
});

app.get("/api/findCourseBooklets", (req, res) => {
  const { courseId, teacherId } = req.query;
  const sql = `SELECT * FROM booklet WHERE Course_Id = ? AND Teacher_Id = ?`;

  connection.query(sql, [courseId, teacherId], (error, results, fields) => {
    if (error) {
      return res.status(500).json({ message: error.message });
    }
    res.status(200).send({ message: "find booklet successfully!", booklets: results });
  });
});

const port = process.env.APP_PORT || 3000;
app.listen(port, () => {
  console.log(`Example app listening on port ${port}`);
});
