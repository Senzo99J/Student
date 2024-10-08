
CREATE TABLE Student(
STU_NUM char(6) primary key,

STU_SNAME varchar(15),

STU_FNAME varchar(15),

STU_INITIALS char(1),

STU_STARTDATE DATE,

COURSE_CODE char(3),

PROJ_NUM int(2)

);

INSERT INTO Student(STU_NUM, STU_SNAME, STU_FNAME, STU_INITIALS, STU_STARTDATE, COURSE_CODE, PROJ_NUM)
    VALUES('01','Snow','Jon','E','2014-04-05','201', 6),
          ('02','Stark','Arya','C','2017-07-12','305', 11),
          ('03','Lannister','Jamie','C','2012-09-05','101', 2),
          ('04','Lannister','Cerceir','J','2012-09-05','101', 2),
          ('05','Greyjoy','Theon','I','2015-12-09','402', 14),
          ('06','Tyrell','Margaery','Y','2017-07-12','305', 10),
          ('07','Baratheon','Tommen','R','2019-06-13','201', 5);
          
SELECT *
FROM Student
WHERE COURSE_CODE = '305'
ORDER BY STU_STARTDATE ;


UPDATE Student
SET COURSE_CODE ='304'
WHERE STU_NUM = '07';


DELETE FROM Student
WHERE STU_FNAME = 'Jamie' AND STU_SNAME = 'Lannister' AND STU_STARTDATE = '2012-09-05' AND COURSE_CODE = '101' AND PROJ_NUM = 2 ;

UPDATE Student
SET PROJ_NUM = '14'
WHERE STU_STARTDATE = '2016-01-01' AND COURSE_CODE >= '201' ;

DROP TABLE Student;