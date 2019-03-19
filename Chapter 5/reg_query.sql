/* Sample SQL statements to query the reg database*/

USE reg;

/*SELECT Queries*/

/*retrieving all columns*/
SELECT * FROM class;

/*retrieving a single column*/
SELECT class_code FROM class;

/*retrievinig multiple columns*/ 
SELECT prof_num, class_code FROM class;

/*retrievinig distinct rows*/
SELECT DISTINCT prof_num FROM class;

/*limiting results*/
SELECT prof_num, class_code FROM class LIMIT 3;
SELECT prof_num, class_code FROM class LIMIT 1, 3;

/*sorting retrieved data*/
SELECT * FROM enroll ORDER BY class_code;
SELECT * FROM enroll ORDER BY class_code DESC;

/*sorting by multiple columns*/
SELECT * FROM enroll ORDER BY class_code DESC, grade;

/*combining ORDER BY and LIMIT*/
SELECT * FROM enroll ORDER BY grade DESC LIMIT 1;

/*WHERE clause*/
/*checking against a single value*/
SELECT class_code FROM class WHERE prof_num = 'P105';
SELECT * FROM enroll WHERE grade < 'C';
SELECT * FROM enroll WHERE grade <> 'C';

/*checking for a range of values*/
SELECT * FROM enroll WHERE grade between 'A' and 'C';

/*checking for No value*/
SELECT * FROM enroll WHERE grade IS NULL;

/*logical operators*/
SELECT * FROM enroll WHERE grade <> 'C' AND class_code = 'BIO08';
SELECT * FROM enroll WHERE grade = 'C' OR class_code = 'BIO08';

/*order of evaluation*/
SELECT * FROM enroll WHERE grade = 'A' OR grade = 'C' AND class_code = 'BIO08';
SELECT * FROM enroll WHERE (grade = 'A' OR grade = 'C') AND class_code = 'BIO08';

/*using the IN operator*/
SELECT * FROM enroll WHERE class_code IN ('BIO04', 'BIO08');

/*using the NOT operator*/
SELECT * FROM enroll WHERE class_code NOT IN ('BIO04', 'BIO08');
SELECT * FROM enroll WHERE grade IS NOT NULL ORDER BY grade;

/*using wildcard filtering*/
/*percentage sign (%) wildcard*/
SELECT class_code FROM class WHERE class_code LIKE 'BIO%';
SELECT * FROM student WHERE stu_email LIKE '%hotmail%';
SELECT * FROM enroll WHERE class_code LIKE 'MAT%' LIMIT 3;

/*underscore (_) wildcard*/
SELECT * FROM student WHERE stu_num LIKE '_18%'; 

/*creating calculated fields*/
/*concatenating fields*/
SELECT Concat(stu_num, ' ', stu_name) FROM student;

/*using aliases*/
SELECT Concat(stu_num, ' ', stu_name) AS student_info FROM student;

/*using aggregate functions*/
/*COUNT() function*/
SELECT COUNT(*) AS num_rows FROM class;
/*NULL is ignored*/
SELECT COUNT(grade) num_grades FROM enroll;
/*counting unique rows*/
SELECT COUNT(DISTINCT stu_num) As num_unique_studenets FROM enroll; 

/*MAX and MIN functions*/
SELECT MAX(grade) FROM enroll WHERE class_code = 'ENG15';
SELECT MIN(grade) FROM enroll WHERE class_code = 'BIO08';

/*grouping data*/
SELECT class_code, COUNT(stu_num) FROM enroll GROUP BY class_code; 
/*the grouping column contains a row with NULL*/
SELECT grade, COUNT(*) AS freq FROM enroll GROUP BY grade;

/*filtering groups*/
SELECT grade, COUNT(*) AS freq FROM enroll GROUP BY grade HAVING COUNT(*) > 1;

/*grouping and soring*/
SELECT grade, COUNT(*) AS freq FROM enroll GROUP BY grade HAVING COUNT(*) > 1 ORDER BY freq DESC;

/*subqueries*/
/*filtering by subquery*/
SELECT COUNT(grade) 
FROM enroll 
WHERE class_code='BIO08' AND grade = (SELECT MIN(grade) FROM enroll WHERE class_code='BIO08');

/*using subqueries as calculated fields*/
SELECT stu_num, stu_name, (SELECT COUNT(*)
                           FROM enroll
                           WHERE stu_num = student.stu_num) AS freq
FROM student;

/*joining tables*/
/*inner joins*/
SELECT prof_num, class_code, stu_num, grade FROM class NATURAL JOIN enroll;

SELECT prof_num, enroll.class_code, stu_num, grade 
FROM class JOIN enroll ON class.class_code=enroll.class_code;

SELECT prof_num, enroll.class_code, stu_num, grade 
FROM class, enroll 
WHERE prof_num='P105' AND class.class_code=enroll.class_code;

SELECT prof_num, b.class_code, stu_num, grade 
FROM class a, enroll b 
WHERE prof_num='P105' AND a.class_code=b.class_code;

/*joining multiple tables*/
SELECT a.stu_num, stu_name, b.class_code, grade, prof_num
FROM student a
JOIN enroll b ON a.stu_num = b.stu_num
JOIN class c ON b.class_code = c.class_code 
LIMIT 5;

/*outer joins*/
SELECT a.stu_num, class_code, grade 
FROM student AS a 
LEFT JOIN enroll b 
ON a.stu_num=b.stu_num; 

SELECT b.class_code, stu_num 
FROM enroll AS a 
RIGHT JOIN class b 
ON a.class_code=b.class_code; 

/*cross Joins*/
SELECT stu_num, class_code 
FROM student CROSS JOIN class;

/*combining queries*/
/*UNION*/
SELECT * FROM enroll WHERE class_code = 'BIO04'
UNION
SELECT * FROM enroll WHERE grade IN ('A', 'C');

/*UNION ALL*/
SELECT * FROM enroll WHERE class_code = 'BIO04'
UNION ALL
SELECT * FROM enroll WHERE grade IN ('A', 'C');

/*creating views*/
CREATE VIEW studentgrade AS
SELECT a.stu_num, stu_name, class_code, grade
FROM student AS a
JOIN enroll As b
ON a.stu_num = b.stu_num;

/*using views*/
SELECT * FROM studentgrade WHERE stu_num = 'G1746';
