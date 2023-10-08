------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------
----Day 1----Day 1----Day 1----Day 1----Day 1----Day 1----Day 1----Day 1----Day 1----Day 1
------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------

-- To see all account
Select * from [AMBSZM].[dbo].[A_Account]
-- TO see top three rows
Select top(3)* from [AMBSZM].[dbo].[A_Account] 
-- To change the Name of a column
Select TransactionAllowed as [T Allowed]  from [AMBSZM].[dbo].A_Account

-- To change a Name of a column Part 2
SELECT TOP (1000) [Id]
      ,[ParentId]
      ,[BranchId]
      ,[Code]
      ,[Name]
      ,[Level]
      ,[TransactionAllowed] as[T Allowed]
      ,[AccountType]
      ,[BalanceType]
      ,[Location]
      ,[IsVatable]
      ,[IsActive]
  FROM [AMBSKE].[dbo].[A_Account]


  -- see all the Name of a column part 2
  SELECT TOP (1000) [Id]
      ,[ParentId]
      ,[BranchId]
      ,[Code]
      ,[Name]
      ,[Level]
      ,[TransactionAllowed]
      ,[AccountType]
      ,[BalanceType]
      ,[Location]
      ,[IsVatable]
      ,[IsActive]
  FROM AMBSKE.dbo.A_Account

-- To Filter a column Name
Select * from AMBSKE.dbo.A_Account where Name = 'Asset'

-- To Filter a column Name part 2
Select * from AMBSKE.dbo.A_Account where Name = 'Cash and cash equivalents'
  
-- Multiple filter using where 
Select * from AMBSKE.dbo.A_Account where Level = '2' AND AccountType = '1' AND Location = '-2'


/*Findind a registered member by me
in the Zambia country*/
Select * from [AMBSZM].[dbo].P_Member WHERE FullName like 'Akash%'

-- Using of like 
Select * from [AMBSZM].[dbo].P_Member WHERE FullName like '% Akash%'


Select * from [AMBSZM].[dbo].P_Member WHERE(FullName like 'Akash%') AND (FatherName != 'Mr. A')
Select * from [AMBSZM].[dbo].P_Member WHERE(FullName like 'Akash%') AND (FatherName <> 'Mr. A')

Select * from [AMBSZM].[dbo].P_Member WHERE FullName like 'Akash%' or FullName like 'Rahat%'
Select * from [AMBSZM].[dbo].P_Member WHERE FullName like 'Akash%' or FullName like 'Rahat%' or FullName like 'Rafat%' or FullName like 'Hafija%'

Select * from [AMBSZM].[dbo].P_Member WHERE P_GroupId BETWEEN 501126 AND 501271




-- Checked to Update a value in a column (Start)
Select * from [AMBSZM].[dbo].P_LoanAccount where P_MemberId = '90130'

Update [AMBSZM].[dbo].P_LoanAccount 
SET InterestAmount = '421'
Where P_MemberId = '90130'

Select * from [AMBSZM].[dbo].P_LoanAccount where P_MemberId = '90130'

Update [AMBSZM].[dbo].P_LoanAccount 
SET InterestAmount = '420'
Where P_MemberId = '90130'


Select * from [AMBSZM].[dbo].P_LoanAccount where P_MemberId = '90130'
-- Checked to Update a value in a column (End Just changed the value back to previous value)


--How to use  IN
Select * FROM [AMBSZM].[dbo].P_Member WHERE NationalIdType IN (32,1,64,256, 16258) 

-- How to select unique values in a column
SELECT DISTINCT NationalIdType FROM [AMBSZM].[dbo].P_Member

-- How to select unique values in a column Part 2
SELECT DISTINCT FullName FROM [AMBSZM].[dbo].P_Member


-- Count unique values in a column
SELECT Count(DISTINCT FullName) as Total_Member_Count
FROM [AMBSZM].[dbo].P_Member

-- Count unique values in a column Part 2 Naming a column
SELECT Count(DISTINCT NationalIdType) 
AS NationalIdType
FROM [AMBSZM].[dbo].P_Member 


--Finding Date Range
Select * from [AMBSZM].[dbo].P_Member as DOB where DateOfBirth >=1999 or DateOfBirth <=2000


--- Day2--- Day2--- Day2--- Day2--- Day2--- Day2--- Day2--- Day2--- Day2--- Day2--- Day2--- Day2
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------

Select * from [AMBSZM].[dbo].[P_Member] WHERE FullName like '% Akash%'

Select * from [AMBSZM].[dbo].[HRM_GradeDesignation]

Select * from [AMBSZM].[dbo].[Module]

Select * from [AMBSZM].[dbo].[A_Account]

Select * from [AMBSZM].[dbo].[A_AccountOld]

Select * from [AMBSZM].[dbo].[A_Currency]

Select * from [AMBSZM].[dbo].[A_LoanInterestReceivable]

Select * from [AMBSZM].[dbo].[A_ReportConfig]

Select * from [AMBSZM].[dbo].[A_Transaction]

Select * from [AMBSZM].[dbo].[A_Transaction2021]

Select * from [AMBSZM].[dbo].[A_Transaction2022]

Select * from [AMBSZM].[dbo].[A_TransactionDetails]

Select * from [AMBSZM].[dbo].[A_TransactionDetails2021]

Select * from [AMBSZM].[dbo].[A_TransactionDetails2022]

Select * from [AMBSZM].[dbo].[A_TransactionDetailsGranular]

Select * from [AMBSZM].[dbo].[A_TransactionDetailsOld]

Select * from [AMBSZM].[dbo].[A_TransactionOld]

Select * from [AMBSZM].[dbo].[Admissionfee_backup_before_delete]

Select * from [AMBSZM].[dbo].[AuditTrailLog]

Select * from [AMBSZM].[dbo].[AuthorizationLog]

Select * from [AMBSZM].[dbo].[B_BankingReportPermission]

Select * from [AMBSZM].[dbo].[P_SecurityAccount]
-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
Select  Count (DISTINCT PermanentCountry) as country from [AMBSZM].[dbo].P_Member
Select * from  [AMBSZM].[dbo].P_Member

--INNER JOIN
SELECT P_GroupId,P_MemberId, DefaultP_ProgramId, PassbookNumber, MembershipType, FullName, DateOfBirth, AdmissionDate, P_ProgramId, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
INNER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like '%Akas%'

--FULL OUTER JOIN
SELECT P_GroupId,P_MemberId, DefaultP_ProgramId, PassbookNumber, MembershipType, FullName, DateOfBirth, AdmissionDate, P_ProgramId, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
FULL OUTER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like '%Akash%'



/*Good Example for INNER JOIN and FULL OUTER JOIN*/

--INNER JOIN
SELECT P_GroupId,P_MemberId, DefaultP_ProgramId, PassbookNumber, MembershipType, FullName, DateOfBirth, AdmissionDate, P_ProgramId, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
INNER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like 'Aliness%'




--FULL OUTER JOIN
SELECT P_GroupId,P_MemberId, DefaultP_ProgramId, PassbookNumber, MembershipType, FullName, DateOfBirth, AdmissionDate, P_ProgramId, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
FULL OUTER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like 'Aliness%'


--LEFT JOIN
Select P_GroupId,P_MemberId, DefaultP_ProgramId, PassbookNumber, MembershipType, FullName, DateOfBirth, AdmissionDate, P_ProgramId, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
LEFT JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like 'Aliness%'

--RIGHT JOIN
Select P_GroupId,P_MemberId, DefaultP_ProgramId, PassbookNumber, MembershipType, FullName, DateOfBirth, AdmissionDate, P_ProgramId, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
RIGHT JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like 'Aliness%'



--Try to do a self join 
Select * from [AMBSZM].[dbo].[HRM_GradeDesignation]

Select HRM_GradeId as GID1 , HRM_GradeId as GID2
From [AMBSZM].[dbo].[HRM_GradeDesignation]
WHERE HRM_GradeId != HRM_DesignationId 


Select * FROM [AMBSZM].[dbo].[P_SecurityAccount]

--Regular SUM in the P_SecurityAccount
SELECT SUM(P_SecurityAccount.MonthlyIncomeAmount) as Total_Monthly_Income
From [AMBSZM].[dbo].[P_SecurityAccount]


----SUM inside an INNER JOIN
SELECT SUM(P_SecurityAccount.MonthlyIncomeAmount) as Total_Monthly_Income
FROM [AMBSZM].[dbo].[P_Member]
INNER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like '%Akas%'

----AVG inside an INNER JOIN
SELECT AVG(P_SecurityAccount.MonthlyIncomeAmount) as Avarage_Monthly_Income
FROM [AMBSZM].[dbo].[P_Member]
INNER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like '%Akas%'


--INNER JOIN
SELECT P_GroupId,P_MemberId, FullName, DateOfBirth, AdmissionDate, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
INNER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like '%Akas%'


Select * FROM [AMBSZM].[dbo].[P_Member] ORDER by PassbookNumber

--Find unique passbook number
Select Count(DISTINCT PassbookNumber)
FROM [AMBSZM].[dbo].[P_Member]

--Finding Null value
SELECT *
FROM [AMBSZM].[dbo].[P_Member]
WHERE SpouseDateOfBirth IS NULL;

--Couning null value in a column
SELECT Count(Id)
FROM [AMBSZM].[dbo].[P_Member]
WHERE SpouseDateOfBirth IS NULL;

--Max passbook Number where SpouseDateOfBirth IS NULL
SELECT MAX(PassbookNumber)
FROM [AMBSZM].[dbo].[P_Member]
WHERE SpouseDateOfBirth IS NULL;
	

---Use of UNION
Select P_GroupId FROM [AMBSZM].[dbo].[P_Member]
UNION 
SELECT 
P_MemberId FROM [AMBSZM].[dbo].[P_SecurityAccount]


---Use of UNION with a where case
Select Name FROM [AMBSZM].[dbo].[Module] as UNION_Name 
WHERE Name like 'A%'
UNION 
SELECT 
Name FROM [AMBSZM].[dbo].[A_Currency]
Where Code = 'AFN' 


---Use of UNION with a where case and sort in descending order 
Select Name FROM [AMBSZM].[dbo].[Module] as UNION_Name 
WHERE Name like 'A%'
UNION 
SELECT 
Name FROM [AMBSZM].[dbo].[A_Currency]
Where Code = 'AFN' Order BY Name DESC
---Follow the below table for above example
-------------------------------------------
Select * from [AMBSZM].[dbo].[Module]
Select * from [AMBSZM].[dbo].[A_Currency]
-------------------------------------------

---Using GRUOP BY
Select Count(Id), FullName
From [AMBSZM].[dbo].[P_Member] 
Group by FullName
ORDER BY COUNT(ID) ASC


---INNER JOIN
SELECT P_GroupId,P_MemberId, FullName, DateOfBirth, AdmissionDate, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
INNER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like '%Akas%'



/* Next goal
is to find the relationship
between all the entitys in the database*/


--Relationship between Member and Security Account
SELECT * from [AMBSZM].[dbo].[P_Member]
SELECT * from [AMBSZM].[dbo].[P_SecurityAccount]

--INNER JOIN
SELECT P_GroupId,P_MemberId, FullName, DateOfBirth, AdmissionDate, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
INNER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like '%Akas%'

-------------------------------------------------------------------------------------------

SELECT * from [AMBSZM].[dbo].[P_Member]
SELECT * from [AMBSZM].[dbo].[P_LoanAccount]
 

SELECT FullName, P_GroupId, P_MemberId, DisbursedDate
From [AMBSZM].[dbo].[P_Member]
INNER JOIN [AMBSZM].[dbo].[P_LoanAccount]
On [AMBSZM].[dbo].[P_Member].Id = [AMBSZM].[dbo].[P_LoanAccount].P_MemberId



-----------------Prove of my solution (Start) ---------------------------------------
SELECT * from [AMBSZM].[dbo].[P_LoanAccount]
SELECT * from [AMBSZM].[dbo].[P_Member] Where FullName like '%Akash Ahmed%'


SELECT FullName, P_GroupId, P_MemberId, DisbursedDate
From [AMBSZM].[dbo].[P_Member]
INNER JOIN [AMBSZM].[dbo].[P_LoanAccount]
On [AMBSZM].[dbo].[P_Member].Id = [AMBSZM].[dbo].[P_LoanAccount].P_MemberId
Where FullName like '%Akash Ahmed%'
-----------------Prove of my solution (End) ---------------------------------------


--Relation ship between Member and Loan Application
----------------------------------------------------
SELECT * from [AMBSZM].[dbo].[P_Member]
SELECT * from [AMBSZM].[dbo].[P_LoanApplication]


SELECT FullName, P_GroupId, P_MemberId, P_LoanAccountId
From [AMBSZM].[dbo].[P_Member]
INNER JOIN [AMBSZM].[dbo].[P_LoanApplication]
On [AMBSZM].[dbo].[P_Member].Id = [AMBSZM].[dbo].[P_LoanApplication].P_MemberId

---Prove of my solution ----
SELECT * from [AMBSZM].[dbo].[P_LoanApplication] where P_MemberId = '1266885'
SELECT * from [AMBSZM].[dbo].[P_Member]  where Id = '1266885'

-------------------------------------------------------------------------------------------




--Relation between Calendar and Branch
Select * from [AMBSZM].[dbo].[Calendar]
Select * from [AMBSZM].[dbo].[Branch]

--Inner join
Select BranchId, Despcription, Code, Name, OpeningDate
From [AMBSZM].[dbo].[Calendar] 
INNER JOIN [AMBSZM].[dbo].[Branch]
On [AMBSZM].[dbo].[Calendar].BranchId = [AMBSZM].[dbo].[Branch].Id
Order By BranchId ASC





--- Day3--- Day3--- Day3--- Day3--- Day3--- Day3--- Day3--- Day3--- Day3--- Day3--- Day3--- Day3
------------------------------------------------------------------------------------------------
------------------------------------------------------------------------------------------------


/*Let's make a guideline for all*/
/*The SQL SELECT Statement*/
/*
The SELECT statement is used to select data from a database.
The data returned is stored in a result table, called the result-set.

Example: 
SELECT column1, column2, ...
FROM table_name;
*/
--Example 1
Select * from [AMBSZM].[dbo].[A_Account]

--Example 2
  SELECT TOP (1000) [Id]
      ,[ParentId]
      ,[BranchId]
      ,[Code]
      ,[Name]
      ,[Level]
      ,[TransactionAllowed]
      ,[AccountType]
      ,[BalanceType]
      ,[Location]
      ,[IsVatable]
      ,[IsActive]
  FROM AMBSKE.dbo.A_Account

/*Aliases*/

/*
SQL Aliases
SQL aliases are used to give a table, or a column in a table, a temporary name.
Aliases are often used to make column names more readable.
An alias only exists for the duration of that query.
An alias is created with the 'AS' keyword.
*/
--Example 1
Select Level AS Lvl_Head, Code AS Code_Head, Name As Name_Head
FROM AMBSKE.dbo.A_Account 

/*
SELECT DISTINCT Examples

SELECT DISTINCT Column_Name FROM Table_Name;

*/

-- Count unique values in a column
--Example 1
Select DISTINCT NationalIdType from [AMBSZM].[dbo].P_Member

--Example 2 (Count unique values in a column Part 2 Naming a column)
SELECT Count(DISTINCT NationalIdType) 
AS NationalIdType
FROM [AMBSZM].[dbo].P_Member 

--Example 3 (Using count to count the total unique name) 
SELECT Count(DISTINCT FullName) as Total_Member_Count
FROM [AMBSZM].[dbo].P_Member


/*SQL WHERE Clause*/

-- Multiple filter using where 
--Example 1
Select * from AMBSKE.dbo.A_Account where Level = '2' 

--Example 2
Select * from AMBSKE.dbo.A_Account where Name = 'Asset'


/*The SQL AND, OR and NOT Operators*/


--AND
--Example 1
Select * FROM AMBSKE.dbo.A_Account 
WHERE Level = '2'
AND AccountType = '1' 
AND Location = '-2'

--OR
--Example 1
Select * FROM AMBSKE.dbo.A_Account 
WHERE Level = '2'
OR AccountType = '1' 
OR Location = '-2'

--NOT
--Example 1
Select * FROM AMBSKE.dbo.A_Account 
WHERE NOT Level = '2' 

/*SQL ORDER BY Keyword*/

/*
The ORDER BY keyword is used to sort the result-set in ascending or descending order.
The ORDER BY keyword sorts the records in ascending order by default. To sort the records in descending order, use the DESC keyword.
Example: 
SELECT column1, column2, ...
FROM table_name
ORDER BY column1, column2, ... ASC|DESC;
*/
--Example 1
Select Level, Code, Name 
FROM AMBSKE.dbo.A_Account 
ORDER BY Name, Code --Name will be ascending then Code will be in ascending order By default
-- Example 2
Select Level, Code, Name 
FROM AMBSKE.dbo.A_Account 
ORDER BY Name ASC, Code DESC --Name will be ascending then Code will be in descending order

/*Try different Combination
for exercise 
*/

/*SQL NULL Values*/
/*
What is a NULL Value?
A field with a NULL value is a field with no value.
If a field in a table is optional, it is possible to insert a new record or update a record without adding a value to this field. Then, the field will be saved with a NULL value.

How to Test for NULL Values?
It is not possible to test for NULL values with comparison operators, such as =, <, or <>.
We will have to use the IS NULL and IS NOT NULL operators instead.

IS NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NULL;

IS NOT NULL Syntax
SELECT column_names
FROM table_name
WHERE column_name IS NOT NULL;
*/
--Example 1
--Finding Null value IS NULL
SELECT P_GroupId, DefaultP_ProgramId, FullName, DateOfBirth, SpouseDateOfBirth
FROM [AMBSZM].[dbo].[P_Member]
WHERE SpouseDateOfBirth IS NULL;
--Example 2
--Finding Null value IS NOT NULL
SELECT P_GroupId, DefaultP_ProgramId, FullName, DateOfBirth, SpouseDateOfBirth
FROM [AMBSZM].[dbo].[P_Member]
WHERE SpouseDateOfBirth IS NOT NULL;

--Example 3
--Couning IS NULL value in a column
SELECT Count(Id)
FROM [AMBSZM].[dbo].[P_Member]
WHERE SpouseDateOfBirth IS NULL;

--Example 4
--Couning IS NOT NULL value in a column
SELECT Count(Id)
FROM [AMBSZM].[dbo].[P_Member]
WHERE SpouseDateOfBirth IS NOT NULL;

--Example 5
--Max passbook Number where SpouseDateOfBirth IS NULL
SELECT MAX(PassbookNumber)
FROM [AMBSZM].[dbo].[P_Member]
WHERE SpouseDateOfBirth IS NULL;
	


/*SQL UPDATE Statement*/
/*
The UPDATE statement is used to modify the existing records in a table.
UPDATE Syntax

Example:
UPDATE table_name
SET column1 = value1, column2 = value2, ...
WHERE condition;
*/

--Please see the below example I have updated the value and changed it back again.
-- Checked to Update a value in a column (Start)
Select *	from [AMBSZM].[dbo].P_LoanAccount where P_MemberId = '90130'

Update [AMBSZM].[dbo].P_LoanAccount 
SET InterestAmount = '421'
Where P_MemberId = '90130'

Select * from [AMBSZM].[dbo].P_LoanAccount where P_MemberId = '90130'

Update [AMBSZM].[dbo].P_LoanAccount 
SET InterestAmount = '420'
Where P_MemberId = '90130'


Select * from [AMBSZM].[dbo].P_LoanAccount where P_MemberId = '90130'
-- Checked to Update a value in a column (End Just changed the value back to previous value)



/*SQL DELETE Statement*/

/*
The DELETE statement is used to delete existing records in a table.
Example:
DELETE FROM table_name WHERE condition;
*/

/*SQL TOP*/

/*
The SQL SELECT TOP Clause
The SELECT TOP clause is used to specify the number of records to return.
The SELECT TOP clause is useful on large tables with thousands of records. Returning a large number of records can impact performance.
Example: 
SELECT TOP (N) column_name(s)
FROM table_name;

*/
--TOP
--Example 1
SELECT TOP 3 * FROM AMBSKE.dbo.A_Account;

--Example 2
  SELECT TOP (15) [Id]
      ,[ParentId]
      ,[BranchId]
      ,[Code]
      ,[Name]
      ,[Level]
      ,[TransactionAllowed]
  FROM AMBSKE.dbo.A_Account

--Using OFFSET
--Example 3
Select * 
from [AMBSZM].[dbo].[A_Currency]
Order By Id ASC
OFFSET 10 ROWS

--Using Fetch and OFFSET
--Example 4
Select * 
from [AMBSZM].[dbo].[A_Currency]
Order By Id ASC
OFFSET 10 ROWS
FETCH FIRST 2 ROWS ONLY

--Using Fetch and OFFSET
--Example 5
Select  Id, FullName, ContactNumber , DateOfBirth
from [AMBSZM].[dbo]. P_Member
order by DateOfBirth ASC
OFFSET 10 rows
FETCH First 25 rows only;


/*SQL MIN() and MAX() Functions*/
/*
The MIN() function returns the smallest value of the selected column.
Example: 
SELECT MIN(column_name)
FROM table_name
WHERE condition;

The MAX() function returns the largest value of the selected column.
Example: 
SELECT MAX(column_name)
FROM table_name
WHERE condition;
*/
--Max passbook Number where SpouseDateOfBirth IS NULL
SELECT MAX(PassbookNumber) as MAX
FROM [AMBSZM].[dbo].[P_Member]

--MIN passbook Number where SpouseDateOfBirth IS NULL
SELECT MIN(PassbookNumber) AS MIN
FROM [AMBSZM].[dbo].[P_Member]



/*
SQL COUNT(), AVG() and SUM() Functions
COUNT() Syntax:
The COUNT() function returns the number of rows that matches a specified criterion.
Example: 
SELECT COUNT(column_name)
FROM table_name
WHERE condition;

AVG() Syntax:
The AVG() function returns the average value of a numeric column. 
Example:
SELECT AVG(column_name)
FROM table_name
WHERE condition;

SUM() Syntax:
The SUM() function returns the total sum of a numeric column. 
Example:
SELECT SUM(column_name)
FROM table_name
WHERE condition;
*/
--COUNT() Syntax: Example 
SELECT Count(PassbookNumber) AS Count
FROM [AMBSZM].[dbo].[P_Member]

--AVG() Syntax: Example 
SELECT AVG(PassbookNumber) AS Agerage
FROM [AMBSZM].[dbo].[P_Member]

--SUM() Syntax: Example 
SELECT SUM(PassbookNumber) AS SUM
FROM [AMBSZM].[dbo].[P_Member]

/*SQL LIKE Operator*/
/*
The LIKE operator is used in a WHERE clause to search for a specified pattern in a column.
There are two wildcards often used in conjunction with the LIKE operator:
The percent sign (%) represents zero, one, or multiple characters
The underscore sign (_) represents one, single character

Example: 
SELECT column1, column2, ...
FROM table_name
WHERE columnN LIKE pattern;
*/
/*
LIKE Operator					Description
WHERE CustomerName LIKE 'a%'	Finds any values that start with "a"
WHERE CustomerName LIKE '%a'	Finds any values that end with "a"
WHERE CustomerName LIKE '%or%'	Finds any values that have "or" in any position
WHERE CustomerName LIKE '_r%'	Finds any values that have "r" in the second position
WHERE CustomerName LIKE 'a_%'	Finds any values that start with "a" and are at least 2 characters in length
WHERE CustomerName LIKE 'a__%'	Finds any values that start with "a" and are at least 3 characters in length
WHERE ContactName LIKE 'a%o'	Finds any values that start with "a" and ends with "o"
*/

--Example 1
SELECT  P_GroupId, PassbookNumber, FullName 
FROM  [AMBSZM].[dbo].[P_Member] 
WHERE FullName like 'a%'
--Example 2
SELECT  P_GroupId, PassbookNumber, FullName 
FROM  [AMBSZM].[dbo].[P_Member] 
WHERE FullName like '%a'
--Example 3
SELECT  P_GroupId, PassbookNumber, FullName 
FROM  [AMBSZM].[dbo].[P_Member] 
WHERE FullName like '%Akash%'

--Example 4
SELECT  P_GroupId, PassbookNumber, FullName 
FROM  [AMBSZM].[dbo].[P_Member] 
WHERE FullName like '_kash%'

--Example 5
SELECT  P_GroupId, PassbookNumber, FullName 
FROM  [AMBSZM].[dbo].[P_Member] 
WHERE FullName like 'a_%'

--Example 6
SELECT  P_GroupId, PassbookNumber, FullName 
FROM  [AMBSZM].[dbo].[P_Member] 
WHERE FullName like 'a__%'

--Example 7
SELECT  P_GroupId, PassbookNumber, FullName 
FROM  [AMBSZM].[dbo].[P_Member] 
WHERE FullName like 'A%d'

/*SQL IN Operator*/
/*
The IN operator allows you to specify multiple values in a WHERE clause.
The IN operator is a shorthand for multiple OR conditions.
*/

--Example 1
--The query below can be shorted using IN Operator
Select * 
FROM [AMBSZM].[dbo].P_Member 
WHERE FullName = 'Akash Ahmed' or FullName = 'Rafat1-Aaksh' or FullName = 'Rafatul123'

--Using IN
Select * 
FROM [AMBSZM].[dbo].P_Member 
WHERE FullName IN ('Akash Ahmed','Rafat1-Aaksh','Rafatul123')


--Example For NOT IN 
Select * 
FROM [AMBSZM].[dbo].P_Member 
WHERE FullName NOT IN ('Akash Ahmed','Rafat1-Aaksh','Rafatul123')

/*SQL BETWEEN Operator*/

/*
The BETWEEN operator selects values within a given range. The values can be numbers, text, or dates.
The BETWEEN operator is inclusive: begin and end values are included. 
Example: 
SELECT column_name(s)
FROM table_name
WHERE column_name BETWEEN value1 AND value2;
*/
--Example 1
--BETWEEN
SELECT Id, P_GroupId, DefaultP_ProgramId, FullName
FROM [AMBSZM].[dbo].P_Member
WHERE P_GroupId BETWEEN 20015 AND 20017 

--Example 2
--NOT BETWEEN 
SELECT Id, P_GroupId, DefaultP_ProgramId, FullName
FROM [AMBSZM].[dbo].P_Member
WHERE P_GroupId NOT BETWEEN 20015 AND 20017 

--Example 3
--BETWEEN with IN Example
SELECT Id, P_GroupId, DefaultP_ProgramId, FullName
FROM [AMBSZM].[dbo].P_Member
WHERE P_GroupId NOT BETWEEN 20015 AND 20017 
AND P_GroupId NOT IN (1,3,501275)


--Example 4
SELECT Id, P_GroupId, DefaultP_ProgramId, FullName
FROM [AMBSZM].[dbo].P_Member
WHERE P_GroupId NOT BETWEEN 20015 AND 20017 
AND P_GroupId NOT IN (1,3,10002)
ORDER BY P_GroupId ASC



/*SQL Joins*/
/*
A JOIN clause is used to combine rows from two or more tables, based on a related column between them.
*/


/*SQL INNER JOIN Keyword*/

/*The INNER JOIN keyword selects records that have matching values in both tables.

INNER JOIN Syntax:
SELECT column_name(s)
FROM table1
INNER JOIN table2
ON table1.column_name = table2.column_name;
*/

--Example 1
--INNER JOIN
SELECT P_GroupId,P_MemberId, DefaultP_ProgramId, PassbookNumber, MembershipType, FullName, DateOfBirth, AdmissionDate, P_ProgramId, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
INNER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like '%Akas%'

--Example 2
/*Good Example for INNER JOIN and FULL OUTER JOIN*/
--INNER JOIN
SELECT P_GroupId,P_MemberId, DefaultP_ProgramId, PassbookNumber, MembershipType, FullName, DateOfBirth, AdmissionDate, P_ProgramId, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
INNER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like 'Aliness%'



/*SQL LEFT JOIN Keyword*/
/*
The LEFT JOIN keyword returns all records from the left table (table1), and the matching records from the right table (table2). The result is 0 records from the right side, if there is no match.

LEFT JOIN Syntax:
SELECT column_name(s)
FROM table1
LEFT JOIN table2
ON table1.column_name = table2.column_name;
*/
--Example 1
--LEFT JOIN
Select P_GroupId,P_MemberId, DefaultP_ProgramId, PassbookNumber, MembershipType, FullName, DateOfBirth, AdmissionDate, P_ProgramId, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
LEFT JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like 'Aliness%'


/*SQL RIGHT JOIN Keyword*/

/*
The RIGHT JOIN keyword returns all records from the right table (table2), and the matching records from the left table (table1). The result is 0 records from the left side, if there is no match.

RIGHT JOIN Syntax:
SELECT column_name(s)
FROM table1
RIGHT JOIN table2
ON table1.column_name = table2.column_name;
*/
--Example 1
--RIGHT JOIN
Select P_GroupId,P_MemberId, DefaultP_ProgramId, PassbookNumber, MembershipType, FullName, DateOfBirth, AdmissionDate, P_ProgramId, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
RIGHT JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like 'Aliness%'



/*SQL FULL OUTER JOIN Keyword*/
/*
The FULL OUTER JOIN keyword returns all records when there is a match in left (table1) or right (table2) table records.
Tip: FULL OUTER JOIN and FULL JOIN are the same.

FULL OUTER JOIN Syntax:
SELECT column_name(s)
FROM table1
FULL OUTER JOIN table2
ON table1.column_name = table2.column_name
WHERE condition;
*/

--Example 1
--FULL OUTER JOIN
SELECT P_GroupId,P_MemberId, DefaultP_ProgramId, PassbookNumber, MembershipType, FullName, DateOfBirth, AdmissionDate, P_ProgramId, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
FULL OUTER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like '%Akash%'

--Example 2
--FULL OUTER JOIN
SELECT P_GroupId,P_MemberId, DefaultP_ProgramId, PassbookNumber, MembershipType, FullName, DateOfBirth, AdmissionDate, P_ProgramId, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
FULL OUTER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like 'Aliness%'


/*SQL Self Join*/
/*
A self join is a regular join, but the table is joined with itself.

Self Join Syntax:
SELECT column_name(s)
FROM table1 T1, table1 T2
WHERE condition;
*/

--Try to do a self join using the below tabe:
Select * from [AMBSZM].[dbo].[HRM_GradeDesignation]

--Example 1
Select HRM_GradeId as GID1 , HRM_GradeId as GID2
From [AMBSZM].[dbo].[HRM_GradeDesignation]
WHERE HRM_GradeId != HRM_DesignationId 



/*SQL UNION Operator*/

/*
The SQL UNION Operator
The UNION operator is used to combine the result-set of two or more SELECT statements.

Every SELECT statement within UNION must have the same number of columns
The columns must also have similar data types
The columns in every SELECT statement must also be in the same order

UNION Syntax:
SELECT column_name(s) FROM table1
UNION
SELECT column_name(s) FROM table2;
*/

---Use of UNION
Select P_GroupId FROM [AMBSZM].[dbo].[P_Member]
UNION 
SELECT 
P_MemberId FROM [AMBSZM].[dbo].[P_SecurityAccount]


---Use of UNION with a where case
Select Name FROM [AMBSZM].[dbo].[Module] as UNION_Name 
WHERE Name like 'A%'
UNION
SELECT 
Name FROM [AMBSZM].[dbo].[A_Currency]
Where Code = 'AFN' 


---Use of UNION with a where case and sort in descending order 
Select Name FROM [AMBSZM].[dbo].[Module] as UNION_Name 
WHERE Name like 'A%'
UNION 
SELECT 
Name FROM [AMBSZM].[dbo].[A_Currency]
Where Code = 'AFN' Order BY Name DESC
---Follow the below table for above example
-------------------------------------------
Select * from [AMBSZM].[dbo].[Module]
Select * from [AMBSZM].[dbo].[A_Currency]
-------------------------------------------


/*
UNION ALL Syntax
The UNION operator selects only distinct values by default. To allow duplicate values, use UNION ALL:
SELECT column_name(s) FROM table1
UNION ALL
SELECT column_name(s) FROM table2;
*/
Select Id, Name, IsActive from [AMBSZM].[dbo].[Module]
UNION ALL
Select Id, Name, IsActive from [AMBSZM].[dbo].[A_Currency]


/*SQL GROUP BY Statement*/
/*
The GROUP BY statement groups rows that have the same values into summary rows, like "find the number of customers in each country".
The GROUP BY statement is often used with aggregate functions (COUNT(), MAX(), MIN(), SUM(), AVG()) to group the result-set by one or more columns.

GROUP BY Syntax:
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
ORDER BY column_name(s);
*/

---Using GRUOP BY
Select Count(Id), FullName
From [AMBSZM].[dbo].[P_Member] 
Group by FullName
ORDER BY COUNT(ID) ASC



/*SQL HAVING Clause*/
/*
The HAVING clause was added to SQL because the WHERE keyword cannot be used with aggregate functions.

HAVING Syntax:
SELECT column_name(s)
FROM table_name
WHERE condition
GROUP BY column_name(s)
HAVING condition
ORDER BY column_name(s);
*/
--Example 1
Select Count(Id) AS ID1, FullName
From [AMBSZM].[dbo].[P_Member]  
Group by FullName
HAVING FullName = 'Mellan Kalilo'

--Example 2
Select Count (FullName) As Number_of_Name, NationalIdType
From [AMBSZM].[dbo].[P_Member] 
Group By NationalIdType
Having NationalIdType > 6

--Example 3
Select Count (FullName) As Number_of_Name, NationalIdType
From [AMBSZM].[dbo].[P_Member] 
Group By NationalIdType
Having Count (FullName) > 6 




--FULL OUTER JOIN
SELECT P_GroupId,P_MemberId, DefaultP_ProgramId, PassbookNumber, MembershipType, FullName, DateOfBirth, AdmissionDate, P_ProgramId, OpeningDate, MonthlyIncomeAmount, ClosingReason
FROM [AMBSZM].[dbo].[P_Member]
FULL OUTER JOIN [AMBSZM].[dbo].[P_SecurityAccount]
ON [AMBSZM].[dbo].[P_Member].P_GroupId = [AMBSZM].[dbo].[P_SecurityAccount].P_MemberId
WHERE FullName like 'Aliness%'


/*SQL EXISTS Operator*/
/*
The EXISTS operator is used to test for the existence of any record in a subquery.
The EXISTS operator returns TRUE if the subquery returns one or more records.
EXISTS Syntax:

SELECT column_name(s)
FROM table_name
WHERE EXISTS
(SELECT column_name FROM table_name WHERE condition);
*/
--Example 1
Select P_GroupId, PassbookNumber, FullName 
From [AMBSZM].[dbo].[P_Member] 
Where EXISTS (
Select P_MemberId 
From [AMBSZM].[dbo].[P_SecurityAccount])






/*SQL ANY Examples*/
/*
The ANY operator:
returns a boolean value as a result
returns TRUE if ANY of the subquery values meet the condition
ANY means that the condition will be true if the operation is true for any of the values in the range.

ANY Syntax
SELECT column_name(s)
FROM table_name
WHERE column_name operator ANY
  (SELECT column_name
  FROM table_name
  WHERE condition);
*/

--Example 1
Select * from [AMBSZM].[dbo].[Module] Where Id = ANY(
Select Id from [AMBSZM].[dbo].[A_Currency])

--Example 2
Select P_GroupId, PassbookNumber, FullName
From [AMBSZM].[dbo].[P_Member] 
Where P_GroupId = ANY(
Select P_MemberId 
From [AMBSZM].[dbo].[P_SecurityAccount])


/*The SQL ALL Operator*/
/*
The ALL operator:

returns a boolean value as a result
returns TRUE if ALL of the subquery values meet the condition
is used with SELECT, WHERE and HAVING statements
ALL means that the condition will be true only if the operation is true for all values in the range.

ALL Syntax With SELECT:
SELECT ALL column_name(s)
FROM table_name
WHERE condition;
*/

--Example 1
Select * from [AMBSZM].[dbo].[P_Member] Where P_GroupId = ALL(
Select P_MemberId from [AMBSZM].[dbo].[P_SecurityAccount])

--Example 2
Select P_GroupId, PassbookNumber, FullName
From [AMBSZM].[dbo].[P_Member] 
Where P_GroupId = ALL(
Select P_MemberId 
From [AMBSZM].[dbo].[P_SecurityAccount] Where Status = 1)



