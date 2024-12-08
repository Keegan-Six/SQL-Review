USE [TutorialDB]

-- Setup
IF OBJECT_ID('Friends','U') IS NOT NULL
	DROP TABLE Friends
GO

CREATE TABLE Friends (
	PersonID INT NOT NULL PRIMARY KEY,
	FName VARCHAR(50) NOT NULL,
	LName VARCHAR(50) NOT NULL,
	Age INT NOT NULL,
	Sex VARCHAR(50) NOT NULL,
	HS BIT NOT NULL,
	);
GO

INSERT INTO Friends ([PersonID],[FName],[LName],[Age],[Sex],[HS])
VALUES
	( 1, 'Keegan', 'Smith', 26, 'Male', 0 ),
	( 2, 'Mia', 'Cobass', 21, 'Female', 0),
	( 3, 'Brianna', '', 20, 'Female', 0),
	( 4, 'Paul', 'T', 26, 'Male', 1),
	( 5, 'Campbell', 'Hoffman', 27, 'Male', 1),
	( 6, 'Michael', 'Zumzande', 26, 'Male', 1),
	( 7, 'Sam', 'Wertz', 26, 'Male', 1),
	( 8, 'Matt', 'Woods', 28, 'Male', 1)
GO 

-- SELECT
-- Selects data from table to show
-- SELECT column1, column2, ....
-- FROM table_name
-- use * to indicate ALL columns
SELECT * FROM Friends

-- SELECT DISTINCT
-- Selects unique/distinct data from table
-- Same syntax as Select
SELECT DISTINCT Age FROM Friends
SELECT COUNT(DISTINCT Age) FROM Friends

-- WHERE 
-- clause used to extract records that fulfill a condition
-- used in SELECT, UPDATE, DELETE, and more, after FROM

SELECT * FROM Friends 
WHERE HS = 1;

-- ORDER BY
-- used to sort the result-set in ascending or descending
-- ascending by default, use DESC to sort descending

SELECT Age FROM Friends
ORDER BY Age DESC

-- AND, OR, NOT
-- boolean logic operators used in where clause
-- AND: All ops are true
-- OR: One of the Ops are true
-- NOT: Gives inverse result

SELECT * FROM Friends
WHERE NOT age = 26 AND (FName = 'Matt' OR FName = 'Campbell' OR FName = 'Paul');

-- INSERT INTO
-- used to insert record into table
-- dont need to specify columns if adding values for ALL columns
-- INSERT INTO table_name (column1, column2,...)
-- VALUES (value1, value2, value3, ...)

INSERT INTO Friends 
VALUES ( 9, 'Kaden', 'Wehrenburg', 21, 'Male', 0);

GO

-- UPDATE


