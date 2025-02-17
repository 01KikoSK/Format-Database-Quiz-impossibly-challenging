@echo off
setlocal EnableDelayedExpansion

set questions[1]=What is the purpose of the "robocopy" command and which switches are essential for preserving file permissions?
set answers[1]=The "robocopy" command is used for robust file copying, and switches like /COPYALL and /MIR are essential for preserving file permissions.

set questions[2]=How do you use the "FOR /D" command to iterate over directories recursively and apply a command to each?
set answers[2]=FOR /R rootdirectory %%i IN (.) DO command

set questions[3]=How can you create a transactional database backup using "sqlcmd" and the transaction log in SQL Server?
set answers[3]=sqlcmd -S server -U user -P password -Q "BACKUP DATABASE db TO DISK='path\full.bak'; BACKUP LOG db TO DISK='path\log.bak'"

set questions[4]=How do you use the "bcp" utility to export data with a specific character encoding from SQL Server?
set answers[4]=bcp db.schema.table out "path\file.txt" -c -C codepage -S server -U user -P password

set questions[5]=What are the differences between the "FULL OUTER JOIN," "LEFT JOIN," and "CROSS JOIN" operations in SQL?
set answers[5]=FULL OUTER JOIN returns all rows when there is a match in one of the tables, LEFT JOIN returns all rows from the left table and matched rows from the right table, and CROSS JOIN returns the Cartesian product of the two tables.

set questions[6]=How do you parse and process an XML file using the "FOR /F" command in a batch file?
set answers[6]=FOR /F "tokens=1* delims=<> " %%i IN (filename.xml) DO command

set questions[7]=What does the "WITH (NOLOCK)" table hint do in a SQL query, and when should it be used?
set answers[7]=WITH (NOLOCK) allows reading data without locking, it should be used when dirty reads are acceptable.

set questions[8]=How do you compress a directory into a .zip file using PowerShell from within a batch file?
set answers[8]=powershell -command "Compress-Archive -Path 'directory' -DestinationPath 'archive.zip'"

set questions[9]=What is the syntax for creating a stored procedure with parameters in SQL Server, and how can it be invoked?
set answers[9]=CREATE PROCEDURE proc_name (@param1 datatype, @param2 datatype) AS BEGIN ... END; EXEC proc_name @param1=value1, @param2=value2

set questions[10]=How can you use the "REG ADD" command to create a new registry key with specific values and types?
set answers[10]=REG ADD "HKCU\Software\NewKey" /v ValueName /t REG_SZ /d Data /f

set questions[11]=How do you detect and handle errors in a batch file using the "ERRORLEVEL" variable?
set answers[11]=IF ERRORLEVEL n command

set questions[12]=What is the purpose of the "OPENROWSET" function in SQL Server, and how is it used to access data from another server?
set answers[12]=OPENROWSET allows access to remote data, used as follows: SELECT * FROM OPENROWSET('provider', 'datasource', 'query')

set questions[13]=How do you use the "SSIS" (SQL Server Integration Services) to automate data import/export tasks?
set answers[13]=Create and configure SSIS packages using SQL Server Data Tools (SSDT) or Visual Studio, then execute them via the SQL Server Agent or DTExec utility.

set questions[14]=What are the advantages of using a CTE (Common Table Expression) in SQL Server, and how is it defined?
set answers[14]=CTE simplifies complex queries and improves readability, defined using WITH CTE_name AS (query)

set questions[15]=How do you implement error handling in a batch file using "try-catch" equivalent logic with labels and conditional statements?
set answers[15]=Use labels for try and catch blocks, and conditional statements to jump to the catch block on error.

set questions[16]=What is the purpose of the "GET-ADUSER" command in PowerShell, and how can it be used to retrieve user properties from Active Directory?
set answers[16]=GET-ADUSER retrieves user properties, used as follows: GET-ADUSER -Identity username -Properties property1, property2

set questions[17]=How can you automate the execution of a PowerShell script from a batch file and pass parameters to it?
set answers[17]=powershell -File "script.ps1" -param1 value1 -param2 value2

set questions[18]=What is the role of the "sys.dm_exec_query_stats" dynamic management view in SQL Server, and how can it be used to analyze query performance?
set answers[18]=sys.dm_exec_query_stats provides execution statistics for queries, used to analyze performance by querying the view.

set questions[19]=How do you configure database mirroring in SQL Server, and what are the key prerequisites and steps involved?
set answers[19]=Configure using SQL Server Management Studio or T-SQL, prerequisites include identical hardware and software, full backups, and network setup.

set questions[20]=What is the purpose of the "Bulk Insert" statement in SQL Server, and how is it used to import data from a file into a table?
set answers[20]=Bulk Insert imports data, used as follows: BULK INSERT table_name FROM 'file_path' WITH (FIELDTERMINATOR = ',', ROWTERMINATOR = '\n')

:quiz
for /L %%i in (1,1,20) do (
    set /p "answer=%%i. !questions[%%i]! "
    if "!answer!"=="!answers[%%i]!" (
        echo Correct!
    ) else (
        echo Incorrect. The correct