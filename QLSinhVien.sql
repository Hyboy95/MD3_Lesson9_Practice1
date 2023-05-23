drop database QuanLySinhVien;
create database QuanLySinhVien;
use QuanLySinhVien;

create table Class (
	ClassID int primary key auto_increment,
    ClassName varchar(10) not null unique,
    StartDate date,
    Status bit
);

create table Student (
	StudentID int primary key auto_increment,
    StudentName varchar(20) not null,
    Address varchar(50) not null,
    Phone varchar(10) unique,
    Status bit,
    ClassID int,
    foreign key (ClassID) references Class(ClassID)
);

create table Subject (
	SubID int primary key auto_increment,
    SubName varchar(10) not null,
    Credit int,
    Status bit
);

create table Mark (
	MarkID int primary key auto_increment,
    SubID int,
    StudentID int,
    Mark int,
    ExamTimes int,
    foreign key (SubID) references Subject(SubID),
    foreign key (StudentID) references Student(StudentID)
);


insert into Class (ClassName, StartDate, Status)
values	('A1', '2008-12-20', 1),
		('A2', '2008-12-22', 1),
        ('B3', current_date(), 0);

insert into Student (StudentName, Address, Phone, Status, ClassID)
values	('Hung', 'Ha Noi', '0912113113', 1 ,1),
		('Hoa', 'Hai Phong', '', 1 ,1),
		('Manh', 'HCM', '0123123123', 0 ,2);
        
insert into Subject (SubName, Credit, Status)
values	('CF', 5, 1),
		('C', 6, 1),
        ('HDJ', 5, 1),
        ('RDBMS', 10, 1);
        
insert into Mark (SubID, StudentID, Mark, ExamTimes)
values	(1, 1, 8, 1),
		(1, 2, 10, 2),
        (2, 1, 12, 1);
        

SELECT * FROM quanlysinhvien.class;
SELECT * FROM quanlysinhvien.student;
SELECT * FROM quanlysinhvien.subject;
SELECT * FROM quanlysinhvien.mark;