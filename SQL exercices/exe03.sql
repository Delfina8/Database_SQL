CREATE DATABASE school;
USE school;

CREATE TABLE students(
id BIGINT AUTO_INCREMENT,
nameStudent VARCHAR(255),
age INT,
class INT,
registration INT,
address VARCHAR(255),
PRIMARY KEY (id)
);

ALTER TABLE students CHANGE address grade  VARCHAR(255);
ALTER TABLE students CHANGE grade grade  FLOAT;

INSERT INTO students (nameStudent, age,class,registration,grade)
VALUE("Joana",15,1,12345,7.9);
INSERT INTO students (nameStudent, age,class,registration,grade)
VALUE("Carlos",17,2,12342,4.4);
INSERT INTO students (nameStudent, age,class,registration,grade)
VALUE("Maria",15,1,76895,9.5);
INSERT INTO students (nameStudent, age,class,registration,grade)
VALUE("António",17,2,45673,7.1);
INSERT INTO students (nameStudent, age,class,registration,grade)
VALUE("Luana",16,3,45674,10.0);
INSERT INTO students (nameStudent, age,class,registration,grade)
VALUE("Yara",17,3,64736,8.4);
INSERT INTO students (nameStudent, age,class,registration,grade)
VALUE("Júlio",15,1,36748,8.6);
INSERT INTO students (nameStudent, age,class,registration,grade)
VALUE("Telma",17,3,736514,7.2);

SELECT * FROM students WHERE grade>7.0;
SELECT * FROM students WHERE grade<7.0;

SET SQL_SAFE_UPDATES=0;
UPDATE students SET grade=5.6 WHERE id=6;

SELECT * FROM students;