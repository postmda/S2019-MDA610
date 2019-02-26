/* Create and populate a sample database reg*/
CREATE DATABASE reg;

USE reg;

CREATE TABLE student (
	stu_num VARCHAR(16) NOT NULL,
	stu_name VARCHAR(64) NOT NULL,
	stu_email VARCHAR(64),
	PRIMARY KEY(stu_num)
	);

CREATE TABLE class (
	class_code VARCHAR(16) NOT NULL,
	class_time VARCHAR(64),
	prof_num VARCHAR(16),
	room_num VARCHAR(16),
	PRIMARY KEY(class_code)
	);

CREATE TABLE enroll (
	stu_num VARCHAR(16) NOT NULL,
	class_code VARCHAR(16) NOT NULL,
	grade VARCHAR(16),
	PRIMARY KEY(stu_num, class_code),
	FOREIGN KEY (stu_num) REFERENCES student(stu_num),
	FOREIGN KEY (class_code) REFERENCES class(class_code) 
	);

INSERT INTO student 
VALUES ('U1639', 'John Davis', 'jdavis@hotmail.com'),
('U1706', 'Mary Miller', 'mary.miller@gmail.com'),
('U1805', 'Mike Smith', 'mike.smith@gmail.com'),
('U1807', 'George Williams', 'gwilliams@hotmail.com'),
('U1723', 'Kelly Wilson', 'kellywilson@gmail.com'),
('G1687', 'David Moore', 'moore16@hotmail.com'),
('G1903', 'John Scott', 'jscott@gmail.com'),
('G1825', 'Amanda Rivera', 'amanda.rivera@hotmail.com'),
('G1746', 'Christopher Green', NULL),
('G1756', 'Jennifer King', 'king11@gmail.com');

INSERT INTO class 
VALUES ('BIO04', 'MW 9:30 to 10:50', 'P105', 'HW204'),
('BIO08', 'TTH 3:30 to 4:50', 'P105', 'HW204'),
('MAT01', 'MW 9:30 to 10:50', 'P211', 'TB152'),
('ENG15', 'T 5:00 to 8:30', 'P304', 'TB152'),
('ENG08', 'W 5:00 to 8:30', 'P304', 'TB156'),
('MAN11', 'WF 9:30 to 10:50', 'P029', 'HW310'),
('MAN20', 'TH 5:00 to 8:30', 'P039', NULL);

INSERT INTO enroll 
VALUES ('U1639', 'BIO04', 'A'),
('U1639', 'MAN20', 'B'),
('U1639', 'MAT01', 'B'),
('U1723', 'MAT01', 'A'),
('U1723', 'ENG08', 'A'),
('U1723', 'BIO08', 'B'),
('U1723', 'MAN20', NULL),
('G1746', 'ENG15', 'A'),
('G1746', 'BIO08', 'B'),
('G1903', 'BIO08', 'C'),
('G1903', 'ENG15', 'B'),
('U1807', 'MAT01', 'B'),
('G1746', 'MAT01', 'C'),
('G1825', 'ENG15', 'A');
