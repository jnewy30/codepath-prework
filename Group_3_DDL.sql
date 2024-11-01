DROP DATABASE IF EXISTS IS_4420_Project_DDL;
CREATE DATABASE IS_4420_Project_DDL;

USE IS_4420_Project_DDL;

DROP TABLE IF EXISTS Department;
CREATE TABLE Department
( DepartmentID				SMALLINT NOT NULL AUTO_INCREMENT,
  DepartmentName			VARCHAR(25) NOT NULL,
  CONSTRAINT PK_Department_DepartmentID PRIMARY KEY (DepartmentID)
);

DROP TABLE IF EXISTS Person;
CREATE TABLE Person
( PersonID				SMALLINT NOT NULL AUTO_INCREMENT, 
  DepartmentID			SMALLINT NOT NULL,
  FirstName				VARCHAR(150) NOT NULL,
  LastName				VARCHAR(150) NOT NULL,
  Address				VARCHAR(150) NOT NULL,
  State					CHAR(2) NOT NULL,
  ZipCode				INT NOT NULL,
  PhoneNum				VARCHAR(14) NOT NULL,
  CONSTRAINT PK_Person_PersonID PRIMARY KEY (PersonID),
  CONSTRAINT FK_Person_DepartmentID FOREIGN KEY (DepartmentID) REFERENCES Department (DepartmentID)
);

DROP TABLE IF EXISTS Customer;
CREATE TABLE Customer
( PersonID				SMALLINT NOT NULL,
  GamesAttended			TINYINT NOT NULL,
  Is_Student		    CHAR(1) NOT NULL,
 CONSTRAINT PK_Customer_PersonID PRIMARY KEY (PersonID),
 CONSTRAINT FK_Customer_PersonID FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
);

DROP TABLE IF EXISTS University;
CREATE TABLE University
( CollegeID				SMALLINT NOT NULL AUTO_INCREMENT,
  CollegeName			VARCHAR(150) NOT NULL,
  CONSTRAINT PK_Iniversity_CollegeID PRIMARY KEY (CollegeID)
);

DROP TABLE IF EXISTS BasketballTeam;
CREATE TABLE BasketballTeam
( TeamID				SMALLINT NOT NULL AUTO_INCREMENT,
  HomeTeamID			SMALLINT NOT NULL,
  AwayTeamID			SMALLINT NOT NULL,
  CollegeID				SMALLINT NOT NULL,
  CONSTRAINT PK_BasketballTeam_TeamID_HomeTeamID_AwayTeamID PRIMARY KEY (TeamID, HomeTeamID, AwayTeamID),
  CONSTRAINT FK_BasketballTeam_CollegeID FOREIGN KEY (CollegeID) REFERENCES University (CollegeID)
);

DROP TABLE IF EXISTS Coach;
CREATE TABLE Coach
( PersonID				SMALLINT NOT NULL,
  TeamID				SMALLINT NOT NULL,
  StartYear				SMALLINT NOT NULL,
  NumOfGamesCoached		SMALLINT NOT NULL,
  Wins_Losses_Percent	SMALLINT NOT NULL,
  CONSTRAINT PK_Coach_PersonID PRIMARY KEY (PersonID),
  CONSTRAINT FK_Coach_PersonID FOREIGN KEY (PersonID) REFERENCES Person (PersonID),
  CONSTRAINT FK_Coach_TeamID FOREIGN KEY (TeamID) REFERENCES BasketballTeam (TeamID)
);

DROP TABLE IF EXISTS Athlete;
CREATE TABLE Athlete
( PersonID				SMALLINT NOT NULL,
  Height				DECIMAL(5, 2) NOT NULL,
  Weight				DECIMAL(5, 2) NOT NULL,
  Player_Position	    VARCHAR(20) NOT NULL,
  CONSTRAINT PK_Athlete_PersonID PRIMARY KEY (PersonID),
  CONSTRAINT FK_Athlete_PersonID FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
); 

DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee
( PersonID				SMALLINT NOT NULL,
  Salary				DECIMAL(8, 2),
  CONSTRAINT PK_Employee_PersonID PRIMARY KEY (PersonID),
  CONSTRAINT FK_Employee_PersonID FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
);

DROP TABLE IF EXISTS Basketball_Event;
CREATE TABLE Basketball_Event
( EventID				SMALLINT NOT NULL AUTO_INCREMENT,
  TeamID				SMALLINT NOT NULL,
  HomeTeamID			SMALLINT NOT NULL,
  AwayTeamID			SMALLINT NOT NULL,
  EventTime				TIME NOT NULL,
  EventLocation			VARCHAR(150) NOT NULL,
  EventDate				DATE NOT NULL,
  EventTicketPrice		DECIMAL(5, 2) NOT NULL,
  CONSTRAINT PK_Basketball_Event_EventID PRIMARY KEY (EventID),
  CONSTRAINT FK_Basketball_Event_TeamID_HomeTeamID_AwayTeamID FOREIGN KEY (TeamID, HomeTeamID, AwayTeamID) REFERENCES BasketballTeam (TeamID, HomeTeamID, AwayTeamID)
);

DROP TABLE IF EXISTS TicketOrder;
CREATE TABLE TicketOrder
( TicketID				SMALLINT NOT NULL AUTO_INCREMENT,
  PersonID				SMALLINT NOT NULL,
  EventID				SMALLINT NOT NULL,
  CONSTRAINT PK_TicketOrder_TicketID PRIMARY KEY (TicketID),
  CONSTRAINT FK_TicketOrder_PersonID FOREIGN KEY (PersonID) REFERENCES Person (PersonID),
  CONSTRAINT FK_TicketOrder_EventID FOREIGN KEY (EventID) REFERENCES Basketball_Event (EventID)
);

DROP TABLE IF EXISTS Statistics;
CREATE TABLE Statistics
( StatsID				SMALLINT NOT NULL AUTO_INCREMENT,
  Avg_Points			DECIMAL(4, 2) NOT NULL,
  Avg_Assists			DECIMAL(4, 2) NOT NULL,
  Avg_Blocks			DECIMAL(4, 2) NOT NULL,
  Avg_Steal				DECIMAL(4, 2) NOT NULL,
  TwoPointPercentage	DECIMAL(4, 2) NOT NULL,
  ThreePointPercentage  DECIMAL(4, 2) NOT NULL,
  Avg_Rebound			DECIMAL(4, 2) NOT NULL,
  CONSTRAINT PK_Statistics_StatsID PRIMARY KEY (StatsID)
);

DROP TABLE IF EXISTS TeamStatistics;
CREATE TABLE TeamStatistics
( StatsID				SMALLINT NOT NULL,
  TeamID				SMALLINT NOT NULL,
  WinLossPercentage		DECIMAL(4, 2) NOT NULL,
  CONSTRAINT PK_TeamStatistics_StatsID PRIMARY KEY (StatsID),
  CONSTRAINT FK_TeamStatistics_StatsID FOREIGN KEY (StatsID) REFERENCES Statistics (StatsID),
  CONSTRAINT FK_TeamStatistics_TeamID FOREIGN KEY (TeamID) REFERENCES BasketballTeam (TeamID)
);

DROP TABLE IF EXISTS AthleteStatistics;
CREATE TABLE AthleteStatistics
( StatsID				SMALLINT NOT NULL,
  PersonID				SMALLINT NOT NULL,
  CONSTRAINT PK_AthleteStatistics_StatsID PRIMARY KEY (StatsID),
  CONSTRAINT FK_AthleteStatistics_StatsID FOREIGN KEY (StatsID) REFERENCES Statistics (StatsID),
  CONSTRAINT FK_AthleteStatistics_PersonID FOREIGN KEY (PersonID) REFERENCES Person (PersonID)
);





