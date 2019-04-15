CREATE TABLE dbo.Student
(
Dw_Student_Id INT PRIMARY KEY,
Name VARCHAR(255),
Surname VARCHAR(255),
Birth DATE
);

CREATE TABLE dbo.Adress
(
Dw_Adress_Id INT PRIMARY KEY,
StreetName     VARCHAR(255),
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

INSERT INTO Adress VALUES(100,'Adress1',315 ,1);
INSERT INTO Adress VALUES(101,'Adress2',316 ,1);
INSERT INTO Adress VALUES(102,'Adress3',317 ,2);
INSERT INTO Adress VALUES(103,'Adress4',318 ,3);
INSERT INTO Adress VALUES(104,'Adress5',319 ,4);
INSERT INTO Adress VALUES(105,'Adress6',310 ,5);
INSERT INTO Adress VALUES(106,'Adress7',325 ,6);
INSERT INTO Adress VALUES(107,'Adress8',326 ,7);
INSERT INTO Adress VALUES(108,'Adress9',327 ,7);
INSERT INTO Adress VALUES(109,'Adress10',330 ,3);
INSERT INTO Adress VALUES(110,'Adress11',331 ,5);
INSERT INTO Adress VALUES(111,'Adress12',332 ,7);
INSERT INTO Adress VALUES(112,'Adress13',340 ,4);

GO

SELECT * FROM dbo.Student;
SELECT * FROM dbo.Adress;
