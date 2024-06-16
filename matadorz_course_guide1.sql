SET
  NAMES utf8mb4;

SET
  FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for booklet
-- ----------------------------
DROP TABLE IF EXISTS `booklet`;

CREATE TABLE `booklet` (
  `Booklet_id` int NOT NULL AUTO_INCREMENT,
  `Booklet_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Booklet_Url` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `Course_Id` int NOT NULL,
  `Teacher_Id` int NOT NULL,
  PRIMARY KEY (`Booklet_id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of booklet
-- ----------------------------
INSERT INTO
  `booklet`
VALUES
  (
    1,
    'مبانی بخش اول',
    'http://www.africau.edu/images/default/sample.pdf',
    1,
    1
  );

INSERT INTO
  `booklet`
VALUES
  (
    2,
    'مبانی بخش دوم',
    'http://www.africau.edu/images/default/sample.pdf',
    1,
    1
  );

-- ----------------------------
-- Table structure for course_teachers
-- ----------------------------
DROP TABLE IF EXISTS `course_teachers`;

CREATE TABLE `course_teachers` (
  `Course_Id` int NOT NULL,
  `Teacher_Id` int NOT NULL,
  PRIMARY KEY (`Course_Id`, `Teacher_Id`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of course_teachers
-- ----------------------------
INSERT INTO
  `course_teachers`
VALUES
  (1, 1);

INSERT INTO
  `course_teachers`
VALUES
  (1, 2);

INSERT INTO
  `course_teachers`
VALUES
  (1, 3);

-- ----------------------------
-- Table structure for courses
-- ----------------------------
DROP TABLE IF EXISTS `courses`;

CREATE TABLE `courses` (
  `Course_Id` int NOT NULL AUTO_INCREMENT,
  `Course_Name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Course_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 63 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of courses
-- ----------------------------
INSERT INTO
  courses
VALUES
  ('مبانی رایانش امن');

INSERT INTO
  courses
VALUES
  ('تفسیر موضوعی قرآن');

INSERT INTO
  courses
VALUES
  ('اخلاق اسلامی (مبانی و مفاهیم)');

INSERT INTO
  courses
VALUES
  ('اندیشه اسالمی 2');

INSERT INTO
  courses
VALUES
  ('تربیت بدنی (تربیت بدنی)1');

INSERT INTO
  courses
VALUES
  ('ورزش 1 (تربیت بدنی )2');

INSERT INTO
  courses
VALUES
  ('آزمایشگاه سیستم های عامل');

INSERT INTO
  courses
VALUES
  ('آزمایشگاه مدارهای الکتریکی');

INSERT INTO
  courses
VALUES
  ('آزمایشگاه ریزپردازنده');

INSERT INTO
  courses
VALUES
  ('آزمایشگاه پایگاه داده');

INSERT INTO
  courses
VALUES
  ('پروژه فناوری اطلاعات');

INSERT INTO
  courses
VALUES
  ('کارآموزی');

INSERT INTO
  courses
VALUES
  ('زبان انگلیسی');

INSERT INTO
  courses
VALUES
  ('ریاضی عمومی 1');

INSERT INTO
  courses
VALUES
  ('مبانی کامپیوتر و برنامه سازی');

INSERT INTO
  courses
VALUES
  ('ریاضیات گسسته');

INSERT INTO
  courses
VALUES
  ('ریاضی عمومی 2');

INSERT INTO
  courses
VALUES
  ('فیزیک 1');

INSERT INTO
  courses
VALUES
  ('برنامه سازی پیشرفته');

INSERT INTO
  courses
VALUES
  ('مدار های منطقی');

INSERT INTO
  courses
VALUES
  ('اصول فناوری اطلاعات');

INSERT INTO
  courses
VALUES
  ('معادلات دیفرانسیل');

INSERT INTO
  courses
VALUES
  ('فیزیک2');

INSERT INTO
  courses
VALUES
  ('ساختمان های داده');

INSERT INTO
  courses
VALUES
  ('تحلیل و طراحی سیستم ها');

INSERT INTO
  courses
VALUES
  (
    'اصول مدیریت و برنامه ریزی راهبردی فناوری اطلاعات'
  );

INSERT INTO
  courses
VALUES
  ('مدارهای الکتریکی');

INSERT INTO
  courses
VALUES
  ('نظریه زبان ها و ماشین ها');

INSERT INTO
  courses
VALUES
  ('معماری کامپیوتر');

INSERT INTO
  courses
VALUES
  ('ریاضیات مهندسی');

INSERT INTO
  courses
VALUES
  ('سیستم های عامل');

INSERT INTO
  courses
VALUES
  ('ریز پردازنده و زبان اسمبلی');

INSERT INTO
  courses
VALUES
  ('اقتصاد مهندسی');

INSERT INTO
  courses
VALUES
  ('زبان فارسی');

INSERT INTO
  courses
VALUES
  ('شبکه های کامپیوتری');

INSERT INTO
  courses
VALUES
  ('طراحی الگوریتم ها');

INSERT INTO
  courses
VALUES
  ('سیگنال ها و سیستم ها');

INSERT INTO
  courses
VALUES
  ('پایگاه داده ها');

INSERT INTO
  courses
VALUES
  ('آمار و احتمال مهندسی');

INSERT INTO
  courses
VALUES
  ('اصول طراحی کامپایلر');

INSERT INTO
  courses
VALUES
  ('هوش مصنوعی و سیستم های خبره');

INSERT INTO
  courses
VALUES
  ('طراحی کامپیوتری سیستم های دیجیتال');

INSERT INTO
  courses
VALUES
  ('تجارت الکترونیکی');

INSERT INTO
  courses
VALUES
  ('مباحث ویژه 1');

INSERT INTO
  courses
VALUES
  ('مدیریت پروژه های فناوری اطالعات');

INSERT INTO
  courses
VALUES
  ('یکپارچه سازی کاربردهای سازمانی');

INSERT INTO
  courses
VALUES
  ('دانش خانواده و جمعیت');

INSERT INTO
  courses
VALUES
  ('ریاضی پیش دانشگاهی');

INSERT INTO
  courses
VALUES
  ('انقلاب اسلامی ایران');

INSERT INTO
  courses
VALUES
  ('اندیشه اسالمی 1');

INSERT INTO
  courses
VALUES
  ('تاریخ تحلیلی صدر اسلام');

INSERT INTO
  courses
VALUES
  ('زبان تخصصی');

INSERT INTO
  courses
VALUES
  ('علوم و معارف دفاع مقدس');

INSERT INTO
  courses
VALUES
  ('روش پژوهش و ارائه');

INSERT INTO
  courses
VALUES
  ('تاریخ فرهنگ و تمدن اسالم و ایران');

INSERT INTO
  courses
VALUES
  ('آزمایشگاه مهندسی نرم افزار');

INSERT INTO
  courses
VALUES
  ('انس با قرآن کریم');

INSERT INTO
  courses
VALUES
  ('کارگاه کامپیوتر');

INSERT INTO
  courses
VALUES
  ('وصیت نامه امام (ره)');

INSERT INTO
  courses
VALUES
  ('آزمایشگاه مدارهای منطقی و معماری کامپیوتر');

INSERT INTO
  courses
VALUES
  ('آزمایشگاه فیزیک 2');

INSERT INTO
  courses
VALUES
  ('آزمایشگاه شبکه های کامپیوتری');

-- ----------------------------
-- Table structure for teachers
-- ----------------------------
DROP TABLE IF EXISTS teachers;

CREATE TABLE teachers (
  Teacher_Id int NOT NULL AUTO_INCREMENT,
  Teacher_Name varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`Teacher_Id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of teachers
-- ----------------------------
INSERT INTO
  `teachers`
VALUES
  (1, 'پریسا رحمانی');

INSERT INTO
  `teachers`
VALUES
  (2, 'محمد باقری');

INSERT INTO
  `teachers`
VALUES
  (3, 'ناصری');

SET
  FOREIGN_KEY_CHECKS = 1;