--1
/*
SELECT BusinessEntityID, FirstName, LastName, City, StateProvinceName, CountryRegionName
FROM Employees
Where CountryRegionName = 'United States'
*/

--2
/*
SELECT  JobTitle, COUNT(*) As [Amount of workers]
FROM Employees
GROUP by JobTitle
*/

--3
/*
Select FirstName, COUNT(FirstName) As [Amount of Names]
From Employees
Group by FirstName
*/
--4
/*
SELECT FirstName
FROM Employees
GROUP BY FirstName
HAVING COUNT(*) = (
    SELECT MAX(NAMECOUNT)
    FROM (
        SELECT COUNT(*) AS NAMECOUNT
        FROM Employees
        GROUP BY FirstName
    ) AS NAMECOUNT
)
*/
--5
/*
SELECT FirstName
FROM Employees
GROUP BY FirstName
HAVING COUNT(*) = (
    SELECT MIN(NAMECOUNT)
    FROM (
        SELECT COUNT(*) AS NAMECOUNT
        FROM Employees
        GROUP BY FirstName
    ) AS NAMECOUNT
)
*/
--6
/*
SELECT TOP 5 City, COUNT(*) AS [Amount of employees]
FROM Employees
GROUP BY City
ORDER BY COUNT(*) DESC
*/

--7
/*
SELECT TOP 5 City, COUNT(DISTINCT JobTitle) AS [Unique jobs]
FROM Employees
GROUP BY City
ORDER BY COUNT(DISTINCT JobTitle) DESC
*/

--8
/*
SELECT EmailAddress
FROM Employees
WHERE StartDate >= '2012-01-01'
*/
--9
/*
SELECT YEAR(StartDate) AS Year, COUNT(*) AS [Employees Hired]
FROM Employees
GROUP BY YEAR(StartDate)
ORDER BY Year
*/
--10
/*
SELECT YEAR(StartDate) AS Year, CountryRegionName, COUNT(*) AS [Employees Hired]
FROM Employees
GROUP BY YEAR(StartDate), CountryRegionName
ORDER BY Year, CountryRegionName
*/
--11
/*
UPDATE Employees
SET EndDate = (
    SELECT TOP 1 EndDate
    FROM History
    WHERE History.BusinessEntityID = Employees.BusinessEntityID
    ORDER BY History.EndDate DESC
)
WHERE EndDate IS NULL
*/
--12
/*
SELECT YEAR(EndDate) AS Year, COUNT(*) AS [Employees uvoleni]
FROM Employees
WHERE EndDate IS NOT NULL
GROUP BY YEAR(EndDate)
ORDER BY Year
*/

--13
/*
SELECT COUNT(*) AS [Employees number]
FROM Employees
WHERE DATEDIFF(DAY, StartDate, EndDate) < 365
*/






