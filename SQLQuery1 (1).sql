use master
create database HandsOnDay1

use HandsOnDay1
create table Trainer_Info
(Trainer_Id varchar(20) NOT NULL,
Salutation varchar(7) NOT NULL,
Trainer_Name varchar(30) NOT NULL,
Trainer_Location varchar(30) NOT NULL,
Trainer_Track varchar(15) NOT NULL,
Trainer_Qualification varchar(100) NOT NULL,
Trainer_Experience int,
Trainer_Email varchar(100) NOT NULL,
Trainer_Password varchar(20) NOT NULL
);


create table Batch_Info
(Batch_Id varchar(20) NOT NULL,
Batch_Owner varchar(30) NOT NULL,
Batch_BU_Name varchar(30) NOT NULL
);

create table Module_Info
(Module_Id varchar(20) NOT NULL,
Module_Name varchar(40) NOT NULL,
Module_Duration int NOT NULL
);

create table Associate_Info
(Asssociate_Id varchar(20) NOT NULL,
Salutation varchar(7) NOT NULL,
Associate_Name varchar(30)NOT NULL,
Associate_Location varchar(30) NOT NULL,
Associate_Track varchar(15) NOT NULL,
Associate_Qualification varchar(200) NOT NULL,
Associate_Email varchar(100) NOT NULL,
Associate_Password varchar(20) NOT NULL
);

create table Questions
(Question_Id varchar(20) NOT NULL,
Module_Id varchar(20),
Question_Text varchar(900) NOT NULL
);

create table Associate_Status
(Associate_Id varchar(20),
Module_Id varchar(20),
Start_Date varchar(20) NOT NULL,
End_Date varchar(20) NOT NULL,
AFeedbackGiven varchar(20) NOT NULL,
TFeedbackGiven varchar(20) NOT NULL
);

create table Trainer_Feedback
(Trainer_Id varchar(20) NOT NULL,
Question_Id varchar(20) NOT NULL,
Batch_Id varchar(20) NOT NULL,
Module_Id varchar(20) NOT NULL,
Trainer_Rating int NOT NULL
);

create table Associate_Feedback
(Associate_Id varchar(20) NOT NULL,
Question_Id varchar(20) NOT NULL,
Module_Id varchar(20) NOT NULL,
Associate_Rating int NOT NULL
);

create table Login_Details
(User_Id varchar(20),
User_Password varchar(20)
);



insert into Trainer_Info values('F001','Mr.','JOHN','Toronto','Java','Bachelor of Technology',12,'John@alliance.com','fac1@123')
insert into Trainer_Info values('F002','Mr.','Mike' ,'Chicago','DotNet','Bachelor of Technology',12,'Mike@alliance.com','fac2@123')
insert into Trainer_Info values('F003','Mr.','Jacob','Washington','Mainframe','Bachelor of Technology',10,'Jacob@alliance.com','fac3@123')
insert into Trainer_Info values('F004','Mrs.','Teena','Mexico','Java','Master of Computer Applications',9,'Teena@alliance.com','fac4@123')
insert into Trainer_Info values('F005','Miss.','Jeni','Boston','Testing','Master of Computer Applications',6,'Jeni@alliance.com','fac5@123')
insert into Trainer_Info values('F006','Mr.', 'William', 'New York City','Mainframe','Bachelor of Technology',9, 'William @alliance.com','fac6@123')
insert into Trainer_Info values('F007','Ms.','Jessi','Los Angeles','Testing','Bachelor of Technology',5,'Jessi@alliance.com','fac7@123')
insert into Trainer_Info values('F008','Mr.','Ryan' , 'New York City','Java','Master of Science In Information Technology',12,'Ryan@alliance.com','fac8@123')

insert into Batch_Info values('B001','MRS.Bella','MSP')
insert into Batch_Info values('B002','MRS.Alexa','HEALTHCARE')
insert into Batch_Info values('B003','MR.Luke','LIFE SCIENCES')
insert into Batch_Info values('B004','MR.Carter','BFS')
insert into Batch_Info values('B005','MR.Jack','COMMUNICATIONS')
insert into Batch_Info values('B006','MRS.Lucy','RETAIL & HOSPITALITY')
insert into Batch_Info values('B007','MRS.Eva','MSP')
insert into Batch_Info values('B008','MRS.Maria','BPO')
insert into Batch_Info values('B009','MR.Henry','MSP')

insert into Module_Info values('O10SQL','Oracle 10g SQL ',16)
insert into Module_Info values('O10PLSQL','Oracle 10g PL/ SQL' ,16)
insert into Module_Info values('J2SE','Core Java SE 1.6',288)
insert into Module_Info values('J2EE','Advanced Java EE 1.6',80)
insert into Module_Info values('JAVAFX','JavaFX 2.1',80)
insert into Module_Info values('DOTNT4','.Net Framework 4.0',50)
insert into Module_Info values('SQL2008','MS SQl Server 2008',120)
insert into Module_Info values('MSBI08','MS BI Studio 2008',158)
insert into Module_Info values('SHRPNT','MS Share Point',80)
insert into Module_Info values('ANDRD4','Android 4.0',200)
insert into Module_Info values('EM001','Instructor',0)
insert into Module_Info values('EM002','Course Material',0)
insert into Module_Info values('EM003','Learning Effectiveness',0)
insert into Module_Info values('EM004','Environment',0)
insert into Module_Info values('EM005','Job Impact',0)
insert into Module_Info values('TM001','Attendees',0)
insert into Module_Info values('TM002','Course Material',0)
insert into Module_Info values('TM003','Environment',0)

insert into Associate_Info values('A001','Miss.','Julia','Toronto','Java','Bachelor of Technology','Julia@hp.com','tne1@123')
insert into Associate_Info values('A002','Mrs.','Anna','Chicago','Java','Bachelor of Engineering In Information Technology','Anna@abc.com','tne2@123')
insert into Associate_Info values('A003','Mr.','Daniel','Washington','Java','Bachelor of Engineering In Computers','daniel@ibm.com','tne3@123')
insert into Associate_Info values('A004','Mr.','Andrew','New York City','DotNet','Master of Computer Applications','Andrew@finolex.com','tne4@123')
insert into Associate_Info values('A005','Miss.','Sofia','Chicago','Mainframe','Bachelor of Engineering In Information Technology','Sofia@microsoft.com','tne5@123')
insert into Associate_Info values('A006','Mrs.','Lily','Toronto','Testing','Master of Computer Applications','Lily@cognabc.com','tne6@123')
insert into Associate_Info values('A007','Mr.','Mason', 'New York City','Java','Bachelor of Technology','Mason@honda.com','tne7@123')



insert into Questions values('Q001','EM001','Instructor knowledgeable and able to handle all your queries')
insert into Questions values('Q002','EM001','All the topics in a particular course handled by the trainer without any gaps or slippages')
insert into Questions values('Q003','EM002','The course materials presentation, handson, etc. referred during the training are relevant and useful.')
insert into Questions values('Q004','EM002','The Hands on session adequate enough to grasp the understanding of the topic.')
insert into Questions values('Q005','EM002','The reference materials suggested for each module are adequate.')
insert into Questions values('Q006','EM003','Knowledge and skills presented in this training are applicable at your work')
insert into Questions values('Q007','EM003','This training increases my proficiency level')
insert into Questions values('Q008','EM004','The physical environment e.g. classroom space, air-conditioning was conducive to learning.')
insert into Questions values('Q009','EM004','The software/hardware environment provided was sufficient for the purpose of the training.')
insert into Questions values('Q010','EM005','This training will improve your job performance.')
insert into Questions values('Q011','EM005','This training align with the business priorities and goals.')
insert into Questions values('Q012','TM001','Participants were receptive and had attitude towards learning.')
insert into Questions values('Q013','TM001','All participants gained the knowledge and the practical skills after this training.')
insert into Questions values('Q014','TM002','The course materials presentation, handson, etc. available for the session covers the entire objectives of the course.')
insert into Questions values('Q015','TM002','Complexity of the course is adequate for the participate level.')
insert into Questions values('Q016','TM002','Case study and practical demos helpful in understanding of the topic')
insert into Questions values('Q017','TM003','The physical environment e.g. classroom space, air-conditioning was conducive to learning.')
insert into Questions values('Q018','TM003','The software/hardware environment provided was adequate for the purpose of the training.')


insert into Associate_Status values('A001','O10SQL','B001','F001',2000-12-15,2000-12-25)
insert into Associate_Status values('A002','O10SQL','B001','F001',2000-12-15,2000-12-25)
insert into Associate_Status values('A003','O10SQL','B001','F001',2000-12-15,2000-12-25)
insert into Associate_Status values('A001','O10PLSQL','B002','F002',2001-2-1,2001-2-12)
insert into Associate_Status values('A002','O10PLSQL','B002','F002',2001-2-1,2001-2-12)
insert into Associate_Status values('A003','O10PLSQL','B002','F002',2001-2-1,2001-2-12)
insert into Associate_Status values('A001','J2SE','B003','F003',2002-8-20,2002-10-25)
insert into Associate_Status values('A002','J2SE','B003','F003',2002-8-20,2002-10-25)
insert into Associate_Status values('A001','J2EE','B004','F004',2005-12-1,2005-12-25)
insert into Associate_Status values('A002','J2EE','B004','F004',2005-12-1,2005-12-25)
insert into Associate_Status values('A003','J2EE','B004','F004',2005-12-1,2005-12-25)
insert into Associate_Status values('A004','J2EE','B004','F004',2005-12-1,2005-12-25)
insert into Associate_Status values('A005','JAVAFX','B005','F006',2005-12-4,2005-12-20)
insert into Associate_Status values('A006','JAVAFX','B005','F006',2005-12-4,2005-12-20)
insert into Associate_Status values('A006','SQL2008','B006','F007',2007-6-21,2007-6-28)
insert into Associate_Status values('A007','SQL2008','B006','F007',2007-6-21,2007-6-28)
insert into Associate_Status values('A002','MSBI08','B007','F006',2009-6-26,2009-6-29)
insert into Associate_Status values('A003','MSBI08','B007','F006',2009-6-26,2009-6-29)
insert into Associate_Status values('A004','MSBI08','B007','F006',2009-6-26,2009-6-29)
insert into Associate_Status values('A002','ANDRD4','B008','F005',2010-6-5,2010-6-28)
insert into Associate_Status values('A005','ANDRD4','B008','F005',2010-6-5,2010-6-28)
insert into Associate_Status values('A003','ANDRD4','B009','F005',2011-8-1,2011-8-20)
insert into Associate_Status values('A006','ANDRD4','B009','F005',2011-8-1,2011-8-20)


select * from Associate_Info
select * from Associate_Status
select * from Batch_Info
select * from Module_Info
select * from Questions
select * from Trainer_Info

alter table Trainer_Info 
ADD CONSTRAINT trainInfo_trainId_pk PRIMARY KEY(Trainer_Id),
CONSTRAINT trainInfo_trainId_chk check(Trainer_Id like 'F%');

alter table Batch_Info 
ADD CONSTRAINT batchInfo_batchId_pk PRIMARY KEY(Batch_Id),
CONSTRAINT batchInfo_batchId_chk check(Batch_Id like 'B%');

alter table Module_Info 
ADD CONSTRAINT moduleInfo_moduleId_pk PRIMARY KEY(Module_Id),
CONSTRAINT moduleInfo_moduleId_chk check(Module_Id=UPPER(Module_Id));

alter table Associate_Info 
ADD CONSTRAINT associateInfo_assoId_pk PRIMARY KEY(Asssociate_Id),
CONSTRAINT associateInfo_assoId_chk check(Asssociate_Id like 'A%');

alter table Questions 
ADD CONSTRAINT ques_quesId_pk PRIMARY KEY(Question_Id),
CONSTRAINT ques_quesId_chk check(Question_Id like 'Q%');

alter table Questions
ADD CONSTRAINT ques_modId_fk FOREIGN KEY(Module_Id) references Module_Info(Module_Id);

alter table Associate_Status
ADD CONSTRAINT assoStat_assoId_fk FOREIGN KEY(Associate_Id) references Associate_Info(Asssociate_Id);

alter table Associate_Status
ADD CONSTRAINT assoStat_modId_fk FOREIGN KEY(Module_Id) references Module_Info(Module_Id);

alter table Trainer_Feedback
ADD CONSTRAINT trfeed_trainId_fk FOREIGN KEY(Trainer_Id) references Trainer_Info(Trainer_Id),
CONSTRAINT trfeed_quesId_fk FOREIGN KEY(Question_Id) references Questions(Question_Id),
CONSTRAINT trfeed_batchId_fk FOREIGN KEY(Batch_Id) references Batch_Info(Batch_Id),
CONSTRAINT trfeed_modId_fk FOREIGN KEY(Module_Id) references Module_Info(Module_Id);

alter table Associate_Feedback
ADD CONSTRAINT assoFeed_assoId_fk FOREIGN KEY(Associate_Id) references Associate_Info(Asssociate_Id),
CONSTRAINT assoFeed_quesId_fk FOREIGN KEY(Question_Id) references Questions(Question_Id),
CONSTRAINT assoFeed_modId_fk FOREIGN KEY(Module_Id) references Module_Info(Module_Id);


create table product
(product_ID int PRIMARY KEY,
product_Name varchar(20),
product_Price int NOT NULL
);

create table users
(user_ID varchar(10) PRIMARY KEY,
product_ID int references product(product_ID),
user_Name varchar(20)
);

insert into product values(1,'A Dongle',290)
insert into product values(2,'B Dongle',1250)

--NO INSERTION insert into product values(3,'C Dongle')

alter table users
DROP CONSTRAINT users_prodId_fk FOREIGN KEY(product_ID) references product(product_Id);


--HANDS ON DAY2
------------------------Exercise 1.1------------------------------------------------------

--1.
Select * from Trainer_Info
where Trainer_Email=''

--2.
select Trainer_ID,Trainer_Name,Trainer_Track,Trainer_Location from Trainer_Info
where Trainer_Experience>4

--3.
select * from Module_Info
where Module_Duration>200

--4.
select Trainer_ID,Trainer_Name from Trainer_Info
where Trainer_Qualification NOT in('Bachelor of Technology')

--5.
select * from Module_Info
where Module_Duration BETWEEN 200 AND 300

--6.
select Trainer_ID,Trainer_Name from Trainer_Info
where Trainer_Name like ('M%')

--7.
select Trainer_ID,Trainer_Name from Trainer_Info
where Trainer_Name like ('O%') or Trainer_Name like ('%O') or Trainer_Name like ('%O%')

--8.
select * from Module_Info
where Module_Name is not null

----------------------------------------Exercise 1.2---------------------------------------------------
--1--
select Module_Name,round(Module_Fee,2) from Module_Fees

--2--
select Module_ID,Module_Name from Module_Info
where Module_Name=UPPER(Left(Module_Name,1))


--3--
select Module_ID,DATEDIFF(DAY,Start_Date,GETDATE()) as 'NO_OF_DAYS' from Associate_Status


--4--
Select *,concat('<',Module_Name,'>','<',Module_ID,'>') as Concatenation from Module_Info

--5--
select UPPER(Module_Name) as Name from Module_Info

--6--
select Module_Name,SUBSTRING(Module_Name,1,3) as 'First 3 chars' from Module_Info

--7--
select avg(isnull(base_fees,0) from Module_Fees

--8--
select convert(numeric,Trainer_ID) + 100000 from Trainer_Info

--10--
select count(Module_ID) as 'Total_Records' from Module_Info

--11--
select sum(base_fees) as 'sum' from module_fees

--12--
select min(base_fees) as 'Minimum',max(base_fees) as 'Maximum' from module_fees


---------------------------------------------Exercise 1.3-----------------------------------------------------------

--1--
