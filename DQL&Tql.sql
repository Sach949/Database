create Database Assignment;
use assignment;

CREATE TABLE Customers(
CID int primary key not null,
CustomerName varchar(20),
Contact varchar(10)
);

Create table Orders(
order_Id int primary key not null,
OrderedName varchar(25),
Order_Date Date check(Order_Date>'2024-06-30'),
Amount double check(Amount>1000),
CustomerID int, 
foreign key(CustomerID) references Customers(CID)
);


insert into Customers values(10,'Sunil', 7894561237);
insert into Customers values(20,'Ajith', 1236589000);
insert into Customers values(30,'Abhay', 4578962000);
insert into Customers values(40,'Sachin', 9789456123);
insert into Customers values(50,'Suman', 7800551240);
insert into Customers values(60,'Nidhi', 6331456478);
insert into Customers values(70,'Nirmala', 9874561789);
insert into Customers values(80,'Srinivas', 8004561239);
insert into Customers values(90,'Urjit', 7089456103);
insert into Customers values(100,'Nandan', 6709456180);

insert into Orders values(1,'Blanket', '2024-07-01', 1200,20);
insert into Orders values(2,'Mobile', '2024-10-10', 22000,90);
insert into Orders values(3,'Water Purifier', '2025-01-01', 17000,100);
insert into Orders values(4,'Charger', '2024-12-21', 1500,10);
insert into Orders values(5,'Laptop', '2024-11-08', 70000,50);
insert into Orders values(6,'Mobile Cover', '2024-11-18', 1100,70);



-- 3 pair table connection

create table Library(
LID int primary key not null,
Library_Name varchar(50),
Location varchar(30)
);
 -- parent table

create table Books(
BID int primary key not null,
Book_Title varchar(70),
Author varchar(50),
Book_Count int,
Library_Id int, foreign key(Library_Id) references Library(LID)
);
 -- child table

create table Readers(
RID int primary key not null,
Reader_Name varchar(30),
Borrow_Date Date,
return_Date date
);
 -- grandchild table

-- adding foreign key into Grandchild table from child table

Alter table Readers add book_Id int;
Alter table Readers add foreign key (book_Id) references Books(BID);

-- inserting value

insert into Library values(11,'Akash Library', 'Delhi');
insert into Library values(12,'L1 Library', 'Banglore');
insert into Library values(13,'Allen Library', 'Mumbai');
insert into Library values(14,'JNU Library', 'Delhi');
insert into Library values(15,'StudyPoint', 'Chennai');
select*from  library;

insert into Books values(201,'Why Bharat Matters', 'S Jaishankar Prasad', 10,14);
insert into Books values(202,'Godaan', 'Munshi Premchand', 7,12);
insert into Books values(203,'Discovery of India', 'Pt Nehru', 12,15);
insert into Books values(204,'Harry Potter', 'JK Rowling', 40,11);
insert into Books values(205,'Charak Samhita', 'Maharishi Charak', 5,13);
select * from books;

insert into Readers values(101,'Anmol', '2023-10-12', '2023-11-11',202);
insert into Readers values(102,'Anuj', '2024-02-28', '2024-03-31',201);
insert into Readers values(103,'Kailash', '2025-01-01', '2025-02-01',203);
insert into Readers values(104,'Pritam', '2024-08-19', '2024-09-18',205);
insert into Readers values(105,'Lata', '2024-12-15', '2025-01-14',204);
select * from Readers;


-- 03 Jan 2025 Assignment
-- DQL - create table with 10 columns and with 15-20 data - use IN, Not IN, Between, not Between, AS,<,>,<=,>=
-- TCL - create table and perform autocommit with & wothout savepoint

create table ExamForm(
RegId int primary key not null,
FirstName varchar(15),
MiddleName varchar(15),
LastName varchar(15),
FatherName varchar(30),
MotherName varchar(30),
DoB date,
Age int,
AdhaarNo bigint,
Address varchar(50),
MatriculationMarks int,
TwelthMarks int,
isGraduated boolean,
GraduationStream varchar(20),
GraduationMarks int,
RegFee double
);
   
alter table examform add TotalRegistration int;
select * from examForm;
desc examform;
Alter table ExamForm drop column MiddleName;
Alter table ExamForm drop column MotherName;
Alter table ExamForm drop column TotalRegistration;


insert into ExamForm values(1001, 'Rahul', 'Sharma', 'Ramesh Sharma', '2000-05-15', 24, 123456789012, 'Delhi', 450, 420, TRUE, 'Science', 68, 1500.00);
insert into ExamForm values(1002, 'Aditi', 'Verma', 'Vijay Verma', '1998-08-20', 26, 234567890123, 'Mumbai', 480, 450, TRUE, 'Commerce', 72, 1500.00);
insert into ExamForm values(1003, 'Rohit', 'Singh', 'Mahesh Singh', '2002-03-12', 22, 345678901234, 'Varanasi', 400, 410, TRUE, 'Arts', 65, 1500.00);
insert into ExamForm values(1004, 'Sneha', 'Mishra', 'Dinesh Mishra', '1999-11-05', 25, 456789012345, 'Lucknow', 470, 460, TRUE, 'Science', 85, 1500.00);
insert into ExamForm values(1005, 'Ankit', 'Pandey', 'Suresh Pandey', '2001-02-10', 23, 567890123456, 'Kolkata', 430, 400, TRUE, 'Commerce', 70, 1500.00);
insert into ExamForm values(1006, 'Pooja', 'Gupta', 'Manoj Gupta', '2003-07-19', 21, 678901234567, 'Chennai', 460, 440, FALSE, NULL, NULL, 1500.00);
insert into ExamForm values(1007, 'Vikas', 'Yadav', 'Rajesh Yadav', '2000-09-14', 24, 789012345678, 'Jaipur', 450, 430, TRUE, 'Arts', 60, 1500.00);
insert into ExamForm values(1008, 'Neha', 'Choudhary', 'Vinod Choudhary', '1997-12-25', 27, 890123456789, 'Patna', 490, 470, TRUE, 'Science', 88, 2000.00);
insert into ExamForm values(1009, 'Aman', 'Tiwari', 'Satish Tiwari', '2004-04-22', 20, 901234567890, 'Ahmedabad', 420, 410, FALSE, NULL, NULL, 2000.00);
insert into ExamForm values(1010, 'Priya', 'Das', 'Bipin Das', '1995-06-18', 29, 123456789011, 'Bhubaneswar', 480, 460, TRUE, 'Commerce', 75, 2000.00);
insert into ExamForm values(1011, 'Arjun', 'Chauhan', 'Bhupendra Chauhan', '2001-01-08', 23, 234567890122, 'Bhopal', 470, 450, TRUE, 'Arts', 69, 2000.00);
insert into ExamForm values(1012, 'Ritu', 'Kaur', 'Balbir Kaur', '2002-05-30', 22, 345678901233, 'Amritsar', 440, 430, TRUE, 'Science', 72, 2000.00);
insert into ExamForm values(1013, 'Saurabh', 'Patel', 'Shivendra Patel', '1996-08-17', 28, 456789012344, 'Indore', 460, 440, TRUE, 'Commerce', 71, 2000.00);
insert into ExamForm values(1014, 'Megha', 'Bhardwaj', 'Pankaj Bhardwaj', '1999-10-11', 25, 567890123455, 'Hyderabad', 450, 420, TRUE, 'Arts', 67, 2000.00);
insert into ExamForm values(1015, 'Sumit', 'Thakur', 'Rajnath Thakur', '2000-01-20', 24, 678901234566, 'Nagpur', 430, 410, TRUE, 'Science', 66, 0.00);
insert into ExamForm values(1016, 'Rashmi', 'Rao', 'Chandresh Rao', '2003-12-09', 21, 789012345677, 'Pune', 470, 450, FALSE, NULL, NULL, 0.00);
insert into ExamForm values(1017, 'Deepak', 'Jain', 'Harish Jain', '1998-03-03', 26, 890123456788, 'Surat', 480, 470, TRUE, 'Commerce', 77, 0.00);
insert into ExamForm values(1018, 'Anjali', 'Dwivedi', 'Ravi Dwivedi', '2002-07-14', 22, 901234567889, 'Kanpur', 440, 430, TRUE, 'Arts', 62, 0.00);
insert into ExamForm values(1019, 'Karan', 'Mehta', 'Mukesh Mehta', '1997-09-05', 27, 123456789010, 'Udaipur', 490, 460, TRUE, 'Science', 89, 0.00);
insert into ExamForm values(1020, 'Pallavi', 'Tripathi', 'Surendra Tripathi', '1995-11-29', 29, 234567890121, 'Guwahati', 460, 450, TRUE, 'Commerce', 76, 0.00);

select * from examForm;
select FirstName from ExamForm where GraduationStream IN ('Arts', 'Commerce'); -- will give first Name of student studying Arts and commerce 
select FirstName from ExamForm where GraduationStream NOT IN ('Commerce', 'Science'); -- will give name of students who are not in science and commerce

select GraduationMarks as Percentage, Address as City from ExamForm;
select Firstname, MatriculationMarks, (MatriculationMarks/600)*100 as Percentage from ExamForm;


select FirstName as StudentName from ExamForm where TwelthMarks between 470 and 500;
select FirstName as StudentName from ExamForm where GraduationMarks not between 68 and 100;

select TwelthMarks from ExamForm where TwelthMarks < 460;
select sum(RegFee) as TotalFee from ExamForm where RegFee <= 1500;

select FirstName, MatriculationMarks from ExamForm where MatriculationMarks > 470;
select Address as City from ExamForm where GraduationMarks >=80 and TwelthMarks >=430;




-- TCL - create table and perform autocommit with & wothout savepoint

create table Students(
StudentId int primary key not null,
Name varchar(20),
GuardianName varchar(20),
Dob date,
Contact bigint,
Email varchar(20),
Address varchar(50),
SchoolName varchar(50),
SchoolLocation varchar(20),
Class varchar(4),
TotalStudent int
);

Alter table Students drop column TotalStudent;
select * from Students;
desc Students;


insert into Students values(1, 'Ravi Sharma', 'Anil Sharma', '2006-01-15', 9876543210, 'ravi@email.com', 'Street 1, Varanasi', 'ABC High School', 'Varanasi', '10');
insert into Students values(2, 'Priya Gupta', 'Suresh Gupta', '2007-03-22', 9876543211, 'priya@email.com', 'Street 2, Mumbai', 'XYZ School', 'Mumbai', '9');
insert into Students values(3, 'Amit Verma', 'Pankaj Verma', '2005-05-30', 9876543212, 'amit@email.com', 'Street 3, Delhi', 'DEF Academy', 'Delhi', '12');
insert into Students values(4, 'Meera Rao', 'Ramesh Rao', '2008-07-14', 9876543213, 'meera@email.com', 'Street 4, Kolkata', 'GHI High School', 'Kolkata', '8');
insert into Students values(5, 'Rahul Kumar', 'Manoj Kumar', '2006-02-10', 9876543214, 'rahul@email.com', 'Street 5, Chennai', 'JKL School', 'Chennai', '10');
insert into Students values(6, 'Neha Yadav', 'Ravi Yadav', '2007-09-19', 9876543215, 'neha@email.com', 'Street 6, Bangalore', 'MNO Academy', 'Bangalore', '9');
insert into Students values(7, 'Arun Patel', 'Vijay Patel', '2005-04-11', 9876543216, 'arun@email.com', 'Street 7, Ahmedabad', 'PQR School', 'Ahmedabad', '12');
insert into Students values(8, 'Sonali Mehta', 'Sanjay Mehta', '2006-10-22', 9876543217, 'sonali@email.com', 'Street 8, Pune', 'STU School', 'Pune', '10');
insert into Students values(9, 'Karan Verma', 'Rajesh Verma', '2007-11-18', 9876543218, 'karan@email.com', 'Street 9, Surat', 'VWX High School', 'Surat', '9');
insert into Students values(10, 'Ritu Chauhan', 'Shivendra Chauhan', '2006-03-27', 9876543219, 'ritu@email.com', 'Street 10, Jaipur', 'YZA Academy', 'Jaipur', '10');

insert into Students values(11, 'Rohit Patel', 'Mahesh Patel', '2005-12-01', 9876543220, 'rohit@email.com', 'Street 11, Lucknow', 'BCD High School', 'Lucknow', '12');
insert into Students values(12, 'Pooja Singh', 'Deepak Singh', '2008-04-17', 9876543221, 'pooja@email.com', 'Street 12, Hyderabad', 'EFG School', 'Hyderabad', '8');
insert into Students values(13, 'Vikas Kumar', 'Sanjay Kumar', '2007-02-28', 9876543222, 'vikas@email.com', 'Street 13, Bhopal', 'HIJ School', 'Bhopal', '9');
insert into Students values(14, 'Sneha Gupta', 'Vikram Gupta', '2006-08-06', 9876543223, 'sneha@email.com', 'Street 14, Chennai', 'KLM Academy', 'Chennai', '10');
insert into Students values(15, 'Aman Yadav', 'Subhash Yadav', '2007-06-25', 9876543224, 'aman@email.com', 'Street 15, Kolkata', 'NOP High School', 'Kolkata', '9');

insert into Students values(18, 'Shivani Das', 'Arvind Das', '2007-01-02', 9876543227, 'shivani@email.com', 'Street 18, Bangalore', 'WXY School', 'Bangalore', '9');
insert into Students values(19, 'Manoj Sharma', 'Rajesh Sharma', '2005-08-23', 9876543228, 'manoj@email.com', 'Street 19, Varanasi', 'ZAB High School', 'Varanasi', '12');
insert into Students values(20, 'Tanu Singh', 'Ravindra Singh', '2006-12-14', 9876543229, 'tanu@email.com', 'Street 20, Pune', 'CDE Academy', 'Pune', '10');

-- delete operation 
set autocommit =0;
savepoint StudentDelete;

Delete from Students where StudentId = 11;
Delete from Students where StudentId = 12;

rollback to savepoint StudentDelete;
select * from Students;
commit;

-- update operation 
set autocommit =0;
savepoint StudentUpdate;

update Students set SchoolName = 'Kendriya Vidyalaya' where StudentId = 7;
update Students set SchoolName = 'DPS', Dob = '2001-01-25' where StudentId = 6;

rollback to savepoint StudentUpdate;
select * from Students;
commit;

-- insert operation 
set autocommit =0;
savepoint StudentInsert;

insert into Students values(16, 'Simran Kaur', 'Harvinder Kaur', '2005-07-05', 9876543225, 'simran@email.com', 'Street 16, Chandigarh', 'QRS School', 'Chandigarh', '12');
insert into Students values(17, 'Deepak Mehta', 'Puneet Mehta', '2006-11-13', 9876543226, 'deepak@email.com', 'Street 17, Delhi', 'TUV Academy', 'Delhi', '10');

rollback to savepoint StudentInsert;
select * from Students;
commit;
















