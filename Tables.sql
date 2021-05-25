#create database electionmachine;
use electionmachine;
CREATE TABLE CANDIDATE (
   ID INTEGER NOT NULL,
   	SURNAME VARCHAR (25),
   FIRSTNAME VARCHAR (25),
   PARTY VARCHAR (50),
   LOCATION VARCHAR (25),
   IKA INTEGER,
   WHY_COMMISSION VARCHAR (250),
   WHAT_ATHES_WANT_EDES VARCHAR (2000),
   PROFESSIONAL VARCHAR (50),
   PRIMARY KEY (ID)
);
delete from candidateanswers where candidateid=99 and CANDIDATEANS=0 ;
# here is table created for candidates answers
CREATE TABLE CANDIDATEANSWERS (
	ID INTEGER NOT NULL auto_increment,
   CANDIDATEID INTEGER NOT NULL,
   QUESTION INTEGER NOT NULL,
   CANDIDATEANS INTEGER not null default 0,
   COMMENT varchar(100),
   PRIMARY KEY (ID)
);
select * from CANDIDATEANSWERS;

#create table for customer answers
CREATE TABLE ANSWER (
   ID INTEGER NOT NULL,
   ANSWER INTEGER default 0,
   PRIMARY KEY (ID)
);

# insert for customer default answers
INSERT INTO ANSWER (ANSWER) VALUES (0);

#This line is to handle utf8 character needs (like ä and ö) if you have not set utf8 encoding already default for your mysql
ALTER DATABASE electionmachine CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

# this chart created for question text
CREATE TABLE QUESTION (
   ID INTEGER NOT NULL auto_increment,
   QUESTION VARCHAR (3000),
   ANSWER INTEGER default 0,
   PRIMARY KEY (ID)
);
drop table question;
select * from question;
# insert values ​​into the table questions

select * from candidateanswers;
CREATE TABLE STATISTICS (
	QUESTION INTEGER NOT NULL,
    numAns1 INTEGER NOT NULL,
    numAns2 INTEGER,
	numAns3 INTEGER,
    numAns4 INTEGER,
    numAns5 INTEGER,
   PRIMARY KEY (QUESTION)
);

CREATE TABLE RESULT (
	ID INTEGER NOT NULL auto_increment,
   CANDIDATEID INTEGER NOT NULL,
	CUSTOMERID INTEGER NOT NULL,
   RESULT DOUBLE default 0,
   PRIMARY KEY (ID)
);
SELECT * FROM RESULT ;
SELECT COUNT(CANDIDATEANS) FROM candidateanswers WHERE QUESTION=1 and CANDIDATEANS=4;
SELECT * FROM RESULT WHERE CUSTOMERID=4 ORDER BY RESULT DESC LIMIT 3 ;
SELECT * FROM CANDIDATE WHERE ID in(4,4,4,4);
#drop table question;
select * from answer;

CREATE TABLE ADMIN (
	username VARCHAR (50) NOT NULL,
   firstname VARCHAR (50) NOT NULL,
   lastname VARCHAR (50) NOT NULL,
   email VARCHAR (100) NOT NULL,
	password VARCHAR (100) NOT NULL,
   PRIMARY KEY (username)
);
select * from admin;
SELECT * FROM ADMIN WHERE USERNAME='hosseinhgz' AND PASSWORD='Hh4497';

select * from question;
UPDATE QUESTION SET ANSWER=0;

CREATE TABLE CUSTOMER (
	CUSTOMERID INTEGER NOT NULL auto_increment,
   FIRSTNAME VARCHAR (30) NOT NULL,
   LASTNAME VARCHAR (30) NOT NULL,
   USERNAME VARCHAR (20) NOT NULL,
   EMAIL VARCHAR (100),
   PHONE VARCHAR (20), 
   PRIMARY KEY (CUSTOMERID)
);

SELECT * FROM CUSTOMER ORDER BY CUSTOMERID DESC LIMIT 1;
