use assignment;

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
update Books  set Library_Id = 15 where BID = 205 ;
select * from books;

insert into Readers values(101,'Anmol', '2023-10-12', '2023-11-11',202);
insert into Readers values(102,'Anuj', '2024-02-28', '2024-03-31',201);
insert into Readers values(103,'Kailash', '2025-01-01', '2025-02-01',203);
insert into Readers values(104,'Pritam', '2024-08-19', '2024-09-18',205);
insert into Readers values(105,'Lata', '2024-12-15', '2025-01-14',204);

select * from Readers;


select * from Books cross join Readers;
select Book_Title from Books cross join Readers ;
select count(*) from Books cross join Readers ;

select * from Library cross join Books cross join Readers;
select count(*) as TotalRow from Library cross join Books cross join Readers;

select * from Library as l inner join Books as b where l.LID = b.Library_Id ;
select Book_Title from Readers r inner join Books b where r.book_Id= b.BID;
select * from Readers r inner join Books b inner join Library l where r.book_Id= b.BID and b.Library_Id = l.LID;