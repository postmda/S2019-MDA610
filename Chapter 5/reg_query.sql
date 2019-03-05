/* Sample SQL statements to query the reg database*/

USE reg;

/*SELECT Queries*/
SELECT * FROM class;
SELECT prof_num, class_code FROM class;
SELECT COUNT(*) FROM class;
SELECT DISTINCT prof_num FROM class;
SELECT class_code FROM class WHERE prof_num = 'P105';
SELECT * FROM enroll WHERE grade <'C';
SELECT * FROM enroll WHERE grade <>'C';
SELECT * FROM enroll WHERE grade <>'C' AND class_code = 'BIO08';
SELECT * FROM enroll WHERE grade IS NULL;
SELECT class_code FROM class WHERE class_code LIKE 'BIO%';
SELECT * FROM student WHERE stu_email LIKE '%hotmail%';
SELECT * FROM enroll WHERE class_code LIKE 'MAT%' LIMIT 3;
SELECT * FROM enroll WHERE class_code LIKE 'MAT%' LIMIT 2, 4;
SELECT * FROM enroll WHERE class_code IN ('BIO04', 'BIO08');

/*Advanced SELECT Queries*/
SELECT * FROM enroll WHERE grade IS NOT NULL ORDER BY grade;
SELECT * FROM enroll ORDER BY class_code ASC;
SELECT * FROM enroll ORDER BY class_code DESC;
SELECT stu_num, COUNT(grade) FROM enroll GROUP BY stu_num;
SELECT stu_num, COUNT(grade) FROM enroll GROUP BY stu_num HAVING (COUNT(grade) >= 2);
/*Inner Joins*/
SELECT prof_num, class_code, stu_num, grade FROM class NATURAL JOIN enroll;
SELECT prof_num, enroll.class_code, stu_num, grade FROM class JOIN enroll ON class.class_code=enroll.class_code;
SELECT prof_num, enroll.class_code, stu_num, grade FROM class, enroll WHERE prof_num='P105' AND class.class_code=enroll.class_code;
SELECT prof_num, b.class_code, stu_num, grade FROM class AS a, enroll As b WHERE prof_num='P105' AND a.class_code=b.class_code;
SELECT stu_name, enroll.class_code, grade FROM student, class, enroll WHERE enroll.class_code=class.class_code AND student.stu_num=enroll.stu_num;

/*Outer Joins*/
SELECT a.stu_num, class_code, grade FROM student AS a LEFT JOIN enroll AS b ON a.stu_num=b.stu_num; 

/*Cross Joins*/
SELECT stu_num, class_code FROM student CROSS JOIN class;

/*Subqueries*/
SELECT COUNT(grade) FROM enroll WHERE class_code='BIO08' AND grade = (SELECT MIN(grade) FROM enroll WHERE class_code='BIO08');
