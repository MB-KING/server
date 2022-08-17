const { json } = require("express");
const express = require("express");
const app = express();
var cors = require("cors");
const mysql = require("mysql");
require("dotenv").config();

app.use(cors());

const connection = mysql.createConnection({
  host: process.env.DB_HOST,
  user: process.env.DB_USER,
  password: process.env.DB_PASS,
  database: process.env.DB_NAME,
});

connection.connect(function (err) {
  if (err) {
    console.error("error connecting: " + err.stack);
    return;
  }
  console.log("connected as id " + connection.threadId);
});

app.get("/api/findCourses", (req, res) => {
  const courseId = req.query.courseName;
  const sql = `SELECT * FROM courses WHERE Course_Name like "%${courseId}%"`;
  connection.query(sql, (error, results, fields) => {
    if (error) {
      res.status(500).json({ message: error });
    }
    res
      .status(200)
      .send({ message: "find courses successfully !", courses: { results } });
  });
});

app.get("/api/findCourseTeachers", (req, res) => {
  const courseId = req.query.courseId;
  const sql = `SELECT course_teachers.Course_Id, course_teachers.Teacher_Id, teachers.Teacher_Name FROM course_teachers LEFT JOIN teachers ON course_teachers.Teacher_Id = teachers.Teacher_Id WHERE Course_Id = "${courseId}"`;
  connection.query(sql, (error, results, fields) => {
    if (error) {
      res.status(500).json({ message: error });
    }
    res
      .status(200)
      .send({ message: "find teachers successfully !", teachers: { results } });
  });
});

app.get("/api/findCourseBooklets", (req, res) => {
  const courseId = req.query.courseId;
  const teacherId = req.query.teacherId;

  const sql = `SELECT * from booklet WHERE Course_Id = ${courseId} AND Teacher_Id =${teacherId}`;
  connection.query(sql, (error, results, fields) => {
    if (error) {
      res.status(500).json({ message: error });
    }
    res
      .status(200)
      .send({ message: "find booklet successfully !", booklets: { results } });
  });
});

app.listen(process.env.APP_PORT, () => {
  console.log(`Example app listening on port ${process.env.APP_PORT}`);
});
