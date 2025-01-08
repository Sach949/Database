use assignment;

create table ExamForms (
    RegNo int primary key,
    StudentName varchar(100) not null,
    Dob date not null check(Dob>'2000-12-31'),
    Age int check(Age>=21 and Age<=25),
    Address varchar(70),
    ExamName varchar(100) not null,
    ExamFee int not null,
    TotalReg int not null,
    TotalMarks int not null,
    ObtainedMarks int,
    Status varchar(10),
    Remarks varchar(100)
);


insert into ExamForms values(1, 'Aarav Kumar', '2003-05-10', 22, 'Bangalore', 'IIT JEE Mains', 500, 120000, 360, 320, 'Passed', 'Good performance');
insert into ExamForms values(2, 'Ishaan Verma', '2004-08-22', 21, 'Delhi', 'IIT JEE Mains', 2000, 130000, 360, 210, 'Passed', 'Needs improvement');
insert into ExamForms values(3, 'Ananya Sharma', '2002-12-05', 23, 'Mumbai', 'NEET', 1000, 110000, 720, NULL, 'Absent', NULL);
insert into ExamForms values(4, 'Rohit Patel', '2001-01-15', 24, 'Chennai', 'CAT', 1500, 800000, 300, 99, 'Failed', 'Keep It up');
insert into ExamForms values(5, 'Priya Singh', '2003-11-28', 21, 'Varanasi', 'UPSC', 1200, 200000, 150, 140, 'Passed', 'Excellent');
insert into ExamForms values(6, 'Rahul Yadav', '2003-03-14', 22, 'Delhi', 'IIT JEE Advanced', 700, 100000, 360, 330, 'Passed', NULL);
insert into ExamForms values(7, 'Madhuri Deshmukh', '2002-06-30', 23, 'Pune', 'GATE', 800, 40000, 100, NULL, 'Absent', NULL);
insert into ExamForms values(8, 'Karan Malhotra', '2004-09-25', 21, 'Bangalore', 'NEET', 800, 150000, 720, 710, 'Passed', 'Excellent');
insert into ExamForms values(9, 'Neha Reddy', '2002-02-10', 23, 'Hyderabad', 'SSC CGL', 400, 300000, 100, NULL, 'Absent', NULL);
insert into ExamForms values(10, 'Vikas Kapoor', '2003-10-05', 22, 'Mumbai', 'JNU Entrance', 500, 50000, 300, 80, 'Failed', 'Needs work');
insert into ExamForms values(11, 'Sanya Kapoor', '2002-04-17', 23, 'Chennai', 'SSC CGL', 700, 120000, 360, 350, 'Passed', 'Strong performance');
insert into ExamForms values(12, 'Manish Sharma', '2003-07-01', 22, 'Jaipur', 'RBI Grade B', 1200, 15000, 300, 105, 'Failed', 'Improvement needed');
insert into ExamForms values(13, 'Priya Singh', '2003-11-28', 21, 'Varanasi', 'RRB JE', 700, 80000, 100, 60, 'Passed', NULL);
insert into ExamForms values(14, 'Aditya Gupta', '2003-01-18', 22, 'Kolkata', 'NEET', 1000, 14000, 720, NULL, 'Absent', NULL);
insert into ExamForms values(15, 'Shruti Desai', '2002-08-29', 23, 'Banglore', 'IIT JEE Mains', 600, 13000, 360, 310, 'Passed', 'Good marks');
insert into ExamForms values(16, 'Amit Chaudhary', '2003-03-24', 22, 'Bhopal', 'UPSC', 1500, 10000, 150, 40, 'Failed', 'Needs more preparation');
insert into ExamForms values(17, 'Siddhi Nair', '2004-10-02', 21, 'Indore', 'IIT JEE Advanced', 700, 9000, 360, 320, 'Passed', NULL);
insert into ExamForms values(19, 'Simran Kaur', '2003-05-25', 22, 'Delhi', 'NEET', 2000, 8000, 720, 710, 'Passed', 'Excellent');
insert into ExamForms values(20, 'Rajeev Joshi', '2001-09-20', 24, 'Kanpur', 'CAT', 1500, 20000, 300, 87, 'Failed', 'Needs improvement');

-- in, not in, like, not like, between, not betwwen, 
--  and, or, not
-- sum, min,max,avg, count


--  RegNo, StudentName, Dob, Age, Address, ExamName, ExamFee, TotalReg,
-- TotalMarks,ObtainedMarks, Status, Remarks

select Status as FailedStudent from Examforms where status = 'Failed';
select Address as City from Examforms;
select StudentName as QualifiedList from ExamForms where status = 'Passed';
select StudentName as FirstTimer from ExamForms where Age = 21;
select StudentName as EngineeringStudents from Examforms where examName = 'IIT JEE Mains';

select StudentName, Age from ExamForms where ExamName in ("UPSC","SSC CSL");
select StudentName, Address as City from ExamForms where Status in ("Failed","Absent");
select ExamName from ExamForms where Address in ("Chennai","Banglore","Delhi");
select * from ExamForms where ExamFee in (1500,2000);
select StudentName from ExamForms where Address in ("Delhi","Varanasi","Mumbai");

select * from ExamForms where Age not in (21,24);
select StudentName from Examforms where Status not in ("Passed","Failed");
select ExamName from ExamForms where ExamFee not in (1000,1500,2000);
select Dob from Examforms where Status not in ("Failed","Absent");
select StudentName, Age from ExamForms where Address not in ("Delhi","Varanasi","Mumbai", "Bangalore");


select StudentName from Examforms where Address like  'K%';
select StudentName from Examforms where Address like  '____n%i';
SELECT * FROM ExamForms WHERE Remarks LIKE '%performance';
SELECT * FROM ExamForms WHERE ExamName LIKE '%IIT%';
SELECT * FROM ExamForms WHERE StudentName LIKE '%Priya%';

SELECT * FROM ExamForms WHERE StudentName NOT LIKE 'A%';
SELECT * FROM ExamForms WHERE ExamName NOT LIKE '%NEET%';
SELECT * FROM ExamForms WHERE Address NOT LIKE 'D%';
SELECT * FROM ExamForms WHERE Remarks NOT LIKE '%Excellent%';
SELECT * FROM ExamForms WHERE StudentName NOT LIKE '%Kumar%';

SELECT * FROM ExamForms WHERE Age BETWEEN 21 AND 23;
SELECT * FROM ExamForms WHERE ExamFee BETWEEN 500 AND 1500;
SELECT * FROM ExamForms WHERE ObtainedMarks BETWEEN 300 AND 400;
SELECT * FROM ExamForms WHERE TotalReg BETWEEN 10000 AND 100000;
SELECT * FROM ExamForms WHERE Dob BETWEEN '2002-01-01' AND '2003-12-31';

SELECT * FROM ExamForms WHERE Age NOT BETWEEN 21 AND 23;
SELECT * FROM ExamForms WHERE ExamFee NOT BETWEEN 500 AND 1500;
SELECT * FROM ExamForms WHERE ObtainedMarks NOT BETWEEN 300 AND 400;
SELECT * FROM ExamForms WHERE TotalReg NOT BETWEEN 10000 AND 100000;
SELECT * FROM ExamForms WHERE Dob NOT BETWEEN '2002-01-01' AND '2003-12-31';


SELECT * FROM ExamForms WHERE Address = 'Delhi' AND ObtainedMarks > 300;
SELECT * FROM ExamForms WHERE Age = 22 AND ExamFee < 1000;
SELECT * FROM ExamForms WHERE Status = 'Passed' AND Remarks IS NOT NULL;
select StudentName as EngineeringStudents from Examforms where examName = 'IIT JEE Mains' and examName = 'IIT JEE Advanced' ;
select StudentName from ExamForms where Status = 'Passed' and Remarks = 'Excellent';

SELECT * FROM ExamForms WHERE ExamName = 'UPSC' OR ExamName = 'CAT';
SELECT * FROM ExamForms WHERE Address = 'Varanasi' OR Address = 'Bangalore';
SELECT * FROM ExamForms WHERE ExamFee > 1500 OR TotalMarks < 300;
SELECT * FROM ExamForms WHERE Remarks = 'Excellent' OR Remarks = 'Good performance';
SELECT * FROM ExamForms WHERE Status = 'Passed' OR Status = 'Failed';


select min(Age) from ExamForms;
select min(TotalReg) from Examforms;
select min(ObtainedMarks) from Examforms;
select min(ExamFee) from Examforms;
select min(ObtainedMarks) from Examforms where Status = 'Failed';

select max(Age) from ExamForms;
select max(ExamFee) from ExamForms;
select max(TotalReg) from ExamForms;
select max(ObtainedMarks) from ExamForms where ExamName = 'IIT JEE Mains';
select max(TotalMarks) from ExamForms;

select sum(ExamFee) from ExamForms;
select sum(TotalReg) from ExamForms;
select sum(ObtainedMarks) from ExamForms where Status = 'Passed';
select sum(TotalReg) from ExamForms where Address  = 'Delhi';
select sum(ExamFee) from ExamForms where Address = 'Varanasi' and Status = 'Passed';

select avg(Age) from Examforms;
select avg(TotalReg) from Examforms;
select avg(Age) from Examforms where Status = 'Passed' and ExamName = 'SSC CGL';
select avg(ObtainedMarks) from Examforms where ExamName = 'NEET';
select avg(TotalReg) from Examforms where Address = 'Delhi';

select count(*) as Total_Student from ExamForms;
select count(*) as QualifiedStudent from ExamForms where Status = 'Passed';
select count(ObtainedMarks) as AppearedStudents from ExamForms;
select count(Age) from ExamForms where Age = 21;
select count(*) from Examforms where Address = 'Chennai'; 