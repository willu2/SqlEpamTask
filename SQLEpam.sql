create database students

CREATE TABLE dbo.Student
(
Dw_Student_Id INT PRIMARY KEY,
Name VARCHAR(255),
Surname VARCHAR(255),
Birth DATE
);

CREATE TABLE dbo.HomeAdress
(
Dw_Adress_Id INT PRIMARY KEY,
StreetName     VARCHAR(255),
BuildingNumber INT,
Dw_Student_Id  INT FOREIGN KEY REFERENCES Student(Dw_Student_Id)
);

CREATE TABLE dbo.UniversityAdress
(
Dw_Adress_Id INT PRIMARY KEY,
UniversityStName     VARCHAR(255),
BuildingNumber INT,
Dw_Student_Id  INT FOREIGN KEY REFERENCES Student(Dw_Student_Id)
);

INSERT INTO dbo.Student VALUES (1, 'Name1', 'Surname1','1925-10-16');
INSERT INTO Student VALUES (2, 'Name2','Surname2','1935-08-15');
INSERT INTO Student VALUES (3, 'Name3','Surname3','1945-07-14');
INSERT INTO Student VALUES (4, 'Name4','Surname4','1955-06-22');
INSERT INTO Student VALUES (5, 'Name5','Surname5','1965-05-25');
INSERT INTO Student VALUES (6, 'Name6','Surname6','1975-04-12');
INSERT INTO Student VALUES (7, 'Name7','Surname7','1985-03-28');
GO

INSERT INTO HomeAdress VALUES(100,'HAdress1',315 ,1);
INSERT INTO HomeAdress VALUES(101,'HAdress2',316 ,1);
INSERT INTO HomeAdress VALUES(102,'HAdress3',317 ,2);
INSERT INTO HomeAdress VALUES(103,'HAdress4',318 ,3);
INSERT INTO HomeAdress VALUES(104,'HAdress5',319 ,4);
INSERT INTO HomeAdress VALUES(105,'HAdress6',310 ,5);
INSERT INTO HomeAdress VALUES(106,'HAdress7',325 ,6);
INSERT INTO HomeAdress VALUES(107,'HAdress8',326 ,7);
INSERT INTO HomeAdress VALUES(108,'HAdress9',327 ,7);
INSERT INTO HomeAdress VALUES(109,'HAdress10',330 ,3);
INSERT INTO HomeAdress VALUES(110,'HAdress11',331 ,5);
INSERT INTO HomeAdress VALUES(111,'HAdress12',332 ,7);
INSERT INTO HomeAdress VALUES(112,'HAdress13',340 ,4);

GO

INSERT INTO UniversityAdress VALUES(100,'UniAdress1',515 ,1);
INSERT INTO UniversityAdress VALUES(101,'UniAdress2',516 ,1);
INSERT INTO UniversityAdress VALUES(102,'UniAdress3',517 ,2);
INSERT INTO UniversityAdress VALUES(103,'UniAdress4',518 ,3);
INSERT INTO UniversityAdress VALUES(104,'UniAdress5',519 ,4);
INSERT INTO UniversityAdress VALUES(105,'UniAdress6',510 ,5);
INSERT INTO UniversityAdress VALUES(106,'UniAdress7',525 ,6);
INSERT INTO UniversityAdress VALUES(107,'UniAdress8',526 ,7);
INSERT INTO UniversityAdress VALUES(108,'UniAdress9',527 ,2);
INSERT INTO UniversityAdress VALUES(109,'UniAdress10',530 ,3);
INSERT INTO UniversityAdress VALUES(110,'UniAdress11',531 ,5);

GO


SELECT * FROM dbo.Student;
SELECT * FROM dbo.HomeAdress;
SELECT * FROM dbo.UniversityAdress;
