DROP DATABASE IF EXISTS assignment_01;
CREATE DATABASE assigment_01;
USE assigment_01;

-- Tạo bảng department (
DROP TABLE IF EXISTS department;
CREATE TABLE department (
	department_id INT, 
    department_name VARCHAR(50)
);

-- Tạo bảng position 
DROP TABLE IF EXISTS position;
CREATE TABLE Position (
	position_Id INT PRIMARY KEY AUTO_INCREMENT,
    position_Name Enum ("Dev","Test","Scrum master","pm") 
);
INSERT INTO Position (position_id,position_name)
VALUES (1,"Dev");
--
INSERT INTO Position (id,name)
VALUES (2,"Test");
--
INSERT INTO Position (id,name)
VALUES (2,"Scrum Master");
--
INSERT INTO Position (id,name)
VALUES (3,"PM");


-- Tạo bảng Accout 
DROP TABLE IF EXISTS accout;
CREATE TABLE Account (
  Accout_Id INT PRIMARY KEY AUTO_INCREMENT,
  Email VARCHAR(50),
  Username VARCHAR(50),
  FullName VARCHAR(50),
  DepartmentID INT(50),
  PositionID INT(50),
  CreateDate VARCHAR(50)
);


-- Tạo bảng Group 
DROP TABLE IF EXISTS `group`;
CREATE TABLE `group` (
  `GroupID` INT PRIMARY KEY AUTO_INCREMENT,
  `GroupName` VARCHAR(50),
  CreatorID INT,
  CreatedDate Date
);


-- Tạo bảng GroupAccount
DROP TABLE IF EXISTS groupAccount;
CREATE TABLE GroupAccount (
  GroupID INT PRIMARY KEY AUTO_INCREMENT,
  AccountId INT,
  JoinDate  Date,
  PRIMARY KEY (group_id, account_id)
);


-- Tạo bảng TypeQuestion
DROP TABLE IF EXISTS typeQuestion ;
CREATE TABLE TypeQuestion (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Name Enum ("Essay","Multiple-choice")
);

-- Tọa bảng CategoryQuestion
DROP TABLE IF EXISTS CategoryQuestion;
CREATE TABLE CategoryQuestion (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Name VARCHAR(50) NOT NULL UNIQUE,
  Description TEXT
);


-- Tạo bảng Question
DROP TABLE IF EXISTS question;
CREATE TABLE Question (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Content TEXT NOT NULL,
  CategoryID INT NOT NULL,
  TypeID INT NOT NULL,
  CreatorID INT NOT NULL,
  CreateDate VARCHAR (50)
);

-- Tạo bảng Answer
DROP TABLE IF EXISTS answer;
CREATE TABLE Answer (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Content TEXT ,
  Question_ID INT ,
  Is_Correct BOOLEAN -- TRUE FALSE 
);

-- Tạo bảng Exam
DROP TABLE IF EXISTS exam;
CREATE TABLE Exam (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  Code INT NOT NULL,
  Title INT,
  CategoryID INT,
  Duration INT,
  CreatorID INT PRIMARY KEY AUTO_INCREMENT,
  CreateDate VARCHAR (50)
);

-- TẠO BẢNG ExamQuestion
DROP TABLE IF EXISTS ExamQuestion;
CREATE TABLE ExamQuestion (
  ID INT PRIMARY KEY AUTO_INCREMENT,
  QuestionID INT,
  PRIMARY KEY (exam_id, question_id)
);
