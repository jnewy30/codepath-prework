-- Queries 

-- 1. Find the highest ticket prices and order by descending

SELECT 
SUM(BE.EventTicketPrice) AS TicketsSold,
BE.EventID
FROM Basketball_Event AS BE 
JOIN 
Customer AS C ON C.PersonID = BE.EventID
GROUP BY BE.EventID
ORDER BY (TicketsSold) DESC;

-- 2. Show events with highest amount of Games attended from a customer

SELECT MAX(C.GamesAttended) AS Games_Attended, C.PersonID, BE.EventID,
CONCAT(C.FirstName, ' ', C.LastName) AS CustomerName
FROM 
Customer AS C
LEFT JOIN
 Basketball_Event AS BE ON BE.EventID = C.PersonID
 GROUP BY C.PersonID
 ORDER BY (Games_Attended) DESC;
 
-- 3. Show Players and Games Attended where win % is greater than 50% in descending order.  

SELECT A.PersonID, C.GamesAttended AS NumOfGamesAttended,
CONCAT(C.FirstName, ' ',C.LastName) AS CustomerName,
CONCAT(A.FirstName, ' ', A.LastName) AS AthleteName, TS.WinLossPercentage
FROM ( Athlete A LEFT JOIN Person P ON A.PersonID = P.PersonID) 
JOIN Customer C ON A.PersonID = C.PersonID
JOIN TeamStatistics TS ON A.PersonID = TS.TeamID
WHERE TS.WinLossPercentage > 40 
ORDER BY TS.WinLossPercentage DESC;

 
 -- 4. Which players have the most points per game and what university are they associated with
 
 SELECT A.PersonID, S.Avg_Points,
 CONCAT(A.FirstName, ' ', A.LastName) AS AthleteName,
 U.CollegeName, U.CollegeID
 FROM ( Athlete A JOIN University U ON A.PersonID = U.CollegeID)
 JOIN Statistics S ON A.PersonID = S.StatsID
 JOIN Person P ON P.PersonID= A.PersonID
 ORDER BY S.Avg_Points DESC;
 
 -- 5. Show team win percentage and and athletes who average less than 3 blocks per game. (JOIN)
 
 SELECT TS.WinLossPercentage, TS.TeamID, A.PersonID, S.Avg_Blocks,
 CONCAT(A.FirstName, ' ', A.LastName) AS AthleteName
 FROM ( TeamStatistics TS JOIN Athlete A ON A.PersonID = TS.TeamID )
 LEFT JOIN Statistics S ON S.StatsID = TS.TeamID
 WHERE S.Avg_Blocks < 3
 ORDER BY WinLossPercentage ASC;

-- 6. Show employees salary and what department they work for in descending order. 

SELECT E.PersonID, E.Salary,
CONCAT(E.FirstName, ' ', E.LastName) AS EmployeeName,
D.DepartmentName
FROM Employee E
	JOIN Department D ON E.PersonID = D.DepartmentID
ORDER BY E.Salary DESC;

-- 7. Show Coach with Number of Games Coached and Wins & Losses.

SELECT Co.PersonID, Co.NumOfGamesCoached, Co.Wins_Losses_Percent,
CONCAT(Co.FirstName, ' ', Co.LastName) AS CoachName
FROM Coach AS Co
GROUP BY Co.PersonID;

-- 8 Show Event Locations and Dates Associated with Home team, and which university they belong to, Order By Event Date Ascending Order.

SELECT BE.EventLocation, BE.EventTime, BE.EventDate, BE.HomeTeamID, U.CollegeName
FROM ( Basketball_Event AS BE JOIN University U ON U.CollegeID = BE.EventID)
ORDER BY BE.EventDate ASC;


-- 9. Show All Attributes from Statistics 

SELECT * FROM Statistics;

-- 10. Create A Stored Procedure that gets Coaches Name from the CoachInfo View.
DELIMITER //
CREATE PROCEDURE GetCoachInfo(IN inCoachName VARCHAR(254) ) 
BEGIN
DECLARE tempCoachId INT;
SET tempCoachID = (SELECT PersonID FROM Coach WHERE CONCAT(FirstName, ' ', LastName) = inCoachName);

SELECT * FROM Coach WHERE PersonID = tempCoachID;

END //
DELIMITER ;

CALL GetCoachInfo('Adeline Duffy');

-- 11. Show a total table for all team statistics.
SELECT * FROM TeamStatistics
INNER JOIN Statistics ON TeamStatistics.StatsID = Statistics.StatsID
ORDER BY WinLossPercentage DESC;

-- 12.  Create a view that lists the universities and their win/loss percentages.

DROP VIEW IF EXISTS UniversityInfo;
CREATE VIEW UniversityInfo AS
SELECT U.CollegeID, U.CollegeName, TS.WinLossPercentage
FROM (University U JOIN TeamStatistics TS ON TS.TeamID = U.CollegeID)
ORDER BY CollegeID;

-- 13. Show players with the highest 3 pt % in descending order.

SELECT A.PersonID, S.ThreePointPercentage, 
CONCAT(A.FirstName, ' ',A.LastName) AS AthleteName
FROM Athlete A
	JOIN Statistics S ON A.PersonID = S.StatsID
    ORDER BY S.ThreePointPercentage DESC;
    
    -- 14. Create a Procedure that gets a university's name from the UniversityInfo View.

DELIMITER //
CREATE PROCEDURE GetUniversityInfo(IN inCollegeName VARCHAR(150) )
BEGIN
DECLARE tempUniversityID INT;
SET tempUniversityID = (SELECT CollegeID FROM University WHERE CollegeName = inCollegeName);

SELECT * FROM University WHERE CollegeID = tempUniversityID;

END //
DELIMITER ;

CALL GetUniversityInfo ('Meharry Medical College');
    
-- 15. Show customers who are students associated with what university and attend the most games in ascending order.

SELECT
	c.PersonID,
    CONCAT(c.FirstName, ' ', c.LastName) AS FullName,
    c.GamesAttended,
    u.CollegeName,
    p.Address
FROM    
    Customer AS c
    JOIN
    University AS u
    ON c.PersonID = u.CollegeID
	JOIN
    Person p ON c.PersonID = p.PersonID
WHERE
	c.Is_Student = 'Y'
GROUP BY
	c.PersonID
ORDER BY
	c.GamesAttended DESC;


-- 16. What are the total capacities of the venues we will be playing and selling tickets at?

SELECT
	EventID,
    EventTicketPrice,
    EventCapacity
FROM
	Basketball_Event;

-- 17. Create a view called CoachInfo on coaches start year and players height, weight, and position.

DROP VIEW IF EXISTS CoachInfo;
CREATE VIEW CoachInfo AS
SELECT Co.PersonID, Co.StartYear, CONCAT(Co.FirstName, ' ', Co.LastName) AS CoachName,
CONCAT(A.FirstName, ' ', A.LastName) AS AthleteName,
A.Height, A.Weight, A.Player_Position 
FROM ( Coach Co JOIN Person P ON P.PersonID = Co.PersonID) 
JOIN Athlete A ON Co.PersonID = A.PersonID
ORDER BY Co.StartYear;

-- 18. Show players order by height and rebound per game, in ascending order

DROP VIEW IF EXISTS PlayerHeightAndRebound;
CREATE VIEW PlayerHeightAndRebound AS
SELECT
	CONCAT(a.FirstName, ' ', a.LastName) AS FullName,
    a.Height,
    s.Avg_Rebound
FROM
	Athlete a
    INNER JOIN
	Statistics s
    ON a.PersonID = s.StatsID
ORDER BY
	a.Height, s.Avg_Rebound ASC;

-- 19. Show teams with the most steals per game and what university they belong to. 

SELECT 
	U.CollegeID,
	U.CollegeName,
	S.Avg_Steal,
    B.TeamID
FROM 
	 University AS U 
     JOIN 
     Statistics S ON U.CollegeID = S.StatsID
     JOIN
     BasketballTeam B ON B.TeamID = U.CollegeID
ORDER BY S.Avg_Steal DESC;

-- 20. Show coaches with highest wins and losses grouped by start year, ordered by number of games coaches.

SELECT PersonID,
CONCAT(FirstName, ' ', LastName) AS CoachName,
StartYear,
NumOfGamesCoached,
Wins_Losses_Percent
FROM Coach
GROUP BY PersonID
ORDER BY NumOfGamesCoached DESC;
