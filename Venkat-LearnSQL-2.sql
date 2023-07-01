USE AdventureWorks2019;  
GO  
UPDATE HumanResources.EmployeePayHistory  
    SET PayFrequency = 4  
    WHERE BusinessEntityID = 1;  
IF @@ERROR = 547
    BEGIN
    PRINT N'Hello A check constraint violation occurred.';
    END
GO  

--#######################################################################################################

USE AdventureWorks2019;  
GO  
-- Drop the procedure if it already exists.  
IF OBJECT_ID(N'HumanResources.usp_DeleteCandidate', N'P') IS NOT NULL  
    DROP PROCEDURE HumanResources.usp_DeleteCandidate;  
GO  
-- Create the procedure.  
CREATE PROCEDURE HumanResources.usp_DeleteCandidate   
    (  
    @CandidateID INT  
    )  
AS  
-- Execute the DELETE statement.  
DELETE FROM HumanResources.JobCandidate  
    WHERE JobCandidateID = @CandidateID;  
-- Test the error value.  
IF @@ERROR = 0   
    BEGIN  
		IF @@ROWCOUNT > 0 
		BEGIN
	    -- Return 0 to the calling program to indicate success.  
			PRINT N'The job candidate has been deleted.';  
			RETURN 0;
		END
		ELSE
		BEGIN
			PRINT N'The job candidate is not found.';  
		END
    END  
ELSE  
    BEGIN  
        -- Return 99 to the calling program to indicate failure.  
        PRINT N'An error occurred deleting the candidate information.';  
        RETURN 99;  
    END;  
GO  

--#######################################################################################################


IF OBJECT_ID ( 'usp_GetErrorInfo', 'P' ) IS NOT NULL   
    DROP PROCEDURE usp_GetErrorInfo;  
GO  
  
-- Create procedure to retrieve error information.  
CREATE PROCEDURE usp_GetErrorInfo  
AS  
SELECT  
    ERROR_NUMBER() AS ErrorNumber  
    ,ERROR_SEVERITY() AS ErrorSeverity  
    ,ERROR_STATE() AS ErrorState  
    ,ERROR_PROCEDURE() AS ErrorProcedure  
    ,ERROR_LINE() AS ErrorLine  
    ,ERROR_MESSAGE() AS ErrorMessage;  
GO  
  
BEGIN TRY  
    -- Generate divide-by-zero error.  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    -- Execute error retrieval routine.  
    EXECUTE usp_GetErrorInfo;  
END CATCH;

--#######################################################################################################
IF OBJECT_ID ( N'usp_ExampleProc', N'P' ) IS NOT NULL   
    DROP PROCEDURE usp_ExampleProc;  
GO  

CREATE PROCEDURE usp_ExampleProc  
AS  
    SELECT * FROM NonexistentTable;  
GO  
  
BEGIN TRY  
    EXECUTE usp_ExampleProc;  
END TRY  
BEGIN CATCH  
    SELECT   
        ERROR_NUMBER() AS ErrorNumber, ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;  

--#######################################################################################################
BEGIN TRY  
    -- Generate a divide-by-zero error.  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    SELECT  
        ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_SEVERITY() AS ErrorSeverity  
        ,ERROR_STATE() AS ErrorState  
        ,ERROR_PROCEDURE() AS ErrorProcedure  
        ,ERROR_LINE() AS ErrorLine  
        ,ERROR_MESSAGE() AS ErrorMessage;  
END CATCH;  


--#######################################################################################################
BEGIN TRANSACTION;  
  
BEGIN TRY  
    -- Generate a constraint violation error.  
    DELETE FROM Production.Product  
    WHERE ProductID = 980;  
END TRY  
BEGIN CATCH  
    SELECT   
        ERROR_NUMBER() AS ErrorNumber  
        ,ERROR_SEVERITY() AS ErrorSeverity  
        ,ERROR_STATE() AS ErrorState  
        ,ERROR_PROCEDURE() AS ErrorProcedure  
        ,ERROR_LINE() AS ErrorLine  
        ,ERROR_MESSAGE() AS ErrorMessage;  
  
    IF @@TRANCOUNT > 0  
        ROLLBACK TRANSACTION;  
END CATCH;  
  
IF @@TRANCOUNT > 0  
    COMMIT TRANSACTION;  
GO  

--#######################################################################################################


BEGIN TRY
    -- RAISERROR with severity 11-19 will cause execution to
    -- jump to the CATCH block.
    RAISERROR ('Error raised in TRY block.', -- Message text.
               16, -- Severity.
               1 -- State.
               );
END TRY
BEGIN CATCH
    DECLARE @ErrorMessage NVARCHAR(4000);
    DECLARE @ErrorSeverity INT;
    DECLARE @ErrorState INT;

    SELECT
        @ErrorMessage = ERROR_MESSAGE(),
        @ErrorSeverity = ERROR_SEVERITY(),
        @ErrorState = ERROR_STATE();

    -- Use RAISERROR inside the CATCH block to return error
    -- information about the original error that caused
    -- execution to jump to the CATCH block.
    RAISERROR (@ErrorMessage, -- Message text.
               @ErrorSeverity, -- Severity.
               @ErrorState -- State.
               );
END CATCH;


--#######################################################################################################
select * from sys.messages
--#######################################################################################################

USE AdventureWorks2019;  
GO  
CREATE TABLE dbo.TestRethrow  
(    ID INT PRIMARY KEY  
);  
BEGIN TRY  
    INSERT dbo.TestRethrow(ID) VALUES(1);  
--  Force error 2627, Violation of PRIMARY KEY constraint to be raised.  
    INSERT dbo.TestRethrow(ID) VALUES(1);  
END TRY  
BEGIN CATCH  
    PRINT 'In catch block.';  
    THROW;  
END CATCH;  
--#######################################################################################################
sp_who
sp_who2
--#######################################################################################################

DECLARE Employee_Cursor CURSOR FOR  
SELECT LastName, FirstName  
FROM AdventureWorks2019.HumanResources.Employee  
WHERE LastName like 'B%';  
  
OPEN Employee_Cursor;  
  
FETCH NEXT FROM Employee_Cursor;  
WHILE @@FETCH_STATUS = 0  
BEGIN  
    FETCH NEXT FROM Employee_Cursor  
END;  
  
CLOSE Employee_Cursor;  
DEALLOCATE Employee_Cursor;
--#######################################################################################################

IF OBJECT_ID ( 'usp_ExampleProc', 'P' ) IS NOT NULL   
    DROP PROCEDURE usp_ExampleProc;  
GO  
  
-- Create a stored procedure that   
-- generates a divide-by-zero error.  
CREATE PROCEDURE usp_ExampleProc  
AS  
    SELECT 1/0;  
GO  
  
BEGIN TRY  
    -- Execute the stored procedure inside the TRY block.  
    EXECUTE usp_ExampleProc;  
END TRY  
BEGIN CATCH  
    SELECT ERROR_PROCEDURE() AS ErrorProcedure;  
END CATCH;  
GO 

--#######################################################################################################
BEGIN TRY  
    -- Generate a divide by zero error  
    SELECT 1/0;  
END TRY  
BEGIN CATCH  
    SELECT ERROR_STATE() AS ErrorState;  
END CATCH;  
GO  

--#######################################################################################################
CURRENT_TIMESTAMP 	Returns the current date and time
DATEADD 	Adds a time/date interval to a date and then returns the date
DATEDIFF 	Returns the difference between two dates
DATEFROMPARTS 	Returns a date from the specified parts (year, month, and day values)
DATENAME 	Returns a specified part of a date (as string)
DATEPART 	Returns a specified part of a date (as integer)
DAY 	Returns the day of the month for a specified date
GETDATE 	Returns the current database system date and time
GETUTCDATE 	Returns the current database system UTC date and time
ISDATE 	Checks an expression and returns 1 if it is a valid date, otherwise 0
MONTH 	Returns the month part for a specified date (a number from 1 to 12)
SYSDATETIME 	Returns the date and time of the SQL Server
YEAR 	Returns the year part for a specified date



select current_timestamp as stimestamp
select DATEADD(year,1,GETDATE()) as currentDatePlusOneYear
select DATEADD(month,1,GETDATE()) as currentDatePlusOneYear
select DATEADD(day,1,GETDATE()) as currentDatePlusOneYear

SELECT DATEDIFF(year, '2017/08/25', '2011/08/25') AS DateDiff; 
SELECT DATEDIFF(year, '2011/08/25', '2017/08/25') AS DateDiff; 

SELECT ISDATE('2017-08-25'); 


--#######################################################################################################
functions

CREATE TABLE student
(
    id INT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    gender VARCHAR(50) NOT NULL,
    DOB datetime NOT NULL,
    total_score INT NOT NULL,
    
 )
 
INSERT INTO student
 
VALUES (1, 'Jolly', 'Female', '12-JUN-1989', 500), 
(2, 'Jon', 'Male', '02-FEB-1974', 545), 
(3, 'Sara', 'Female', '07-MAR-1988', 600), 
(4, 'Laura', 'Female', '22-DEC-1981', 400), 
(5, 'Alan', 'Male', '29-JUL-1993', 500), 
(6, 'Kate', 'Female', '03-JAN-1985', 500), 
(7, 'Joseph', 'Male', '09-APR-1982', 643), 
(8, 'Mice', 'Male', '16-AUG-1974', 543), 
(9, 'Wise', 'Male', '11-NOV-1987', 499), 
(10, 'Elis', 'Female', '28-OCT-1990', 400);


 
CREATE FUNCTION getFormattedDate
 (
 @DateValue AS DATETIME
 )
RETURNS VARCHAR(MAX)
AS
BEGIN
	RETURN
	  DATENAME(DW, @DateValue)+ ', '+
	  DATENAME(DAY, @DateValue)+ ' '+
	  DATENAME(MONTH, @DateValue) +', '+
	  DATENAME(YEAR, @DateValue)
 
END

SELECT name, [dbo].[getFormattedDate](DOB) FROM student
 



--#######################################################################################################


--#######################################################################################################
--#######################################################################################################
--#######################################################################################################
