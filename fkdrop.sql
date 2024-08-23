create database fkdrop;

use fkdrop;

CREATE TABLE Players (PlayerID INT PRIMARY KEY,FirstName VARCHAR(50),LastName VARCHAR(50),DOB DATE,
    Country VARCHAR(50),BattingStyle VARCHAR(20),BowlingStyle VARCHAR(20),
    Role VARCHAR(20),MatchesPlayed INT,TotalRuns INT,TotalWickets INT);

INSERT INTO Players (PlayerID, FirstName, LastName, DOB, Country, BattingStyle, BowlingStyle, Role, MatchesPlayed, TotalRuns, TotalWickets)
VALUES 
(1, 'Virat', 'Kohli', '1988-11-05', 'India', 'Right-hand', 'Right-arm medium', 'Batsman', 254, 12040, 4),
(2, 'MS', 'Dhoni', '1981-07-07', 'India', 'Right-hand', 'Right-arm medium', 'Wicketkeeper', 350, 10773, 1),
(3, 'Rohit', 'Sharma', '1987-04-30', 'India', 'Right-hand', 'Right-arm offbreak', 'Batsman', 244, 9825, 8),
(4, 'Sachin', 'Tendulkar', '1973-04-24', 'India', 'Right-hand', 'Right-arm offbreak', 'Batsman', 463, 18426, 154),
(5, 'Kapil', 'Dev', '1959-01-06', 'India', 'Right-hand', 'Right-arm fast', 'All-rounder', 225, 3783, 253),
(6, 'Anil', 'Kumble', '1970-10-17', 'India', 'Right-hand', 'Right-arm legbreak', 'Bowler', 271, 938, 337),
(7, 'Rahul', 'Dravid', '1973-01-11', 'India', 'Right-hand', 'Right-arm offbreak', 'Batsman', 344, 10889, 4),
(8, 'Sourav', 'Ganguly', '1972-07-08', 'India', 'Left-hand', 'Right-arm medium', 'Batsman', 311, 11363, 100),
(9, 'Yuvraj', 'Singh', '1981-12-12', 'India', 'Left-hand', 'Left-arm orthodox', 'All-rounder', 304, 8701, 111),
(10, 'Jasprit', 'Bumrah', '1993-12-06', 'India', 'Right-hand', 'Right-arm fast', 'Bowler', 72, 19, 121),
(11, 'Ravindra', 'Jadeja', '1988-12-06', 'India', 'Left-hand', 'Left-arm orthodox', 'All-rounder', 171, 2411, 187),
(12, 'Harbhajan', 'Singh', '1980-07-03', 'India', 'Right-hand', 'Right-arm offbreak', 'Bowler', 236, 1237, 269),
(13, 'Zaheer', 'Khan', '1978-10-07', 'India', 'Left-hand', 'Left-arm fast-medium', 'Bowler', 200, 792, 282),
(14, 'Virender', 'Sehwag', '1978-10-20', 'India', 'Right-hand', 'Right-arm offbreak', 'Batsman', 251, 8273, 96),
(15, 'Gautam', 'Gambhir', '1981-10-14', 'India', 'Left-hand', 'Right-arm legbreak', 'Batsman', 147, 5238, 8);

CREATE TABLE Teams (TeamID INT PRIMARY KEY,TeamName VARCHAR(50),Country VARCHAR(50),
    CoachName VARCHAR(50),CaptainID INT,HomeGround VARCHAR(50),TotalMatches INT,
    Wins INT,Losses INT,Draws INT,FOREIGN KEY (CaptainID) REFERENCES Players(PlayerID));

INSERT INTO Teams (TeamID, TeamName, Country, CoachName, CaptainID, HomeGround, TotalMatches, Wins, Losses, Draws)
VALUES 
(1, 'India', 'India', 'Ravi Shastri', 1, 'Wankhede Stadium', 963, 514, 419, 30),
(2, 'Australia', 'Australia', 'Justin Langer', 2, 'MCG', 945, 578, 332, 35),
(3, 'England', 'England', 'Chris Silverwood', 3, 'Lords', 978, 388, 541, 49),
(4, 'South Africa', 'South Africa', 'Mark Boucher', 4, 'Wanderers', 631, 384, 214, 33),
(5, 'New Zealand', 'New Zealand', 'Gary Stead', 5, 'Eden Park', 775, 351, 370, 54),
(6, 'West Indies', 'West Indies', 'Phil Simmons', 6, 'Kensington Oval', 829, 408, 388, 33),
(7, 'Pakistan', 'Pakistan', 'Misbah-ul-Haq', 7, 'Gaddafi Stadium', 933, 490, 404, 39),
(8, 'Sri Lanka', 'Sri Lanka', 'Mickey Arthur', 8, 'R. Premadasa Stadium', 841, 389, 417, 35),
(9, 'Bangladesh', 'Bangladesh', 'Russell Domingo', 9, 'Shere Bangla Stadium', 379, 136, 238, 5),
(10, 'Afghanistan', 'Afghanistan', 'Lance Klusener', 10, 'Sharjah Cricket Stadium', 128, 62, 63, 3),
(11, 'Ireland', 'Ireland', 'Graham Ford', 11, 'Malahide', 168, 72, 87, 9),
(12, 'Zimbabwe', 'Zimbabwe', 'Lalchand Rajput', 12, 'Harare Sports Club', 524, 140, 371, 13),
(13, 'Netherlands', 'Netherlands', 'Ryan Campbell', 13, 'VRA Ground', 90, 40, 48, 2),
(14, 'Scotland', 'Scotland', 'Shane Burger', 14, 'Grange Cricket Club', 128, 55, 70, 3),
(15, 'Namibia', 'Namibia', 'Pierre de Bruyn', 15, 'Wanderers Cricket Ground', 61, 25, 34, 2);

CREATE TABLE Matches (MatchID INT PRIMARY KEY,MatchDate DATE,Venue VARCHAR(50),
    Team1ID INT,Team2ID INT,WinningTeamID INT,MatchType VARCHAR(20),Umpire VARCHAR(50),
    TossWinnerID INT,ManOfTheMatchID INT,
    FOREIGN KEY (Team1ID) REFERENCES Teams(TeamID),FOREIGN KEY (Team2ID) REFERENCES Teams(TeamID),
    FOREIGN KEY (WinningTeamID) REFERENCES Teams(TeamID),FOREIGN KEY (TossWinnerID) REFERENCES Teams(TeamID),
    FOREIGN KEY (ManOfTheMatchID) REFERENCES Players(PlayerID));

INSERT INTO Matches (MatchID, MatchDate, Venue, Team1ID, Team2ID, WinningTeamID, MatchType, Umpire, TossWinnerID, ManOfTheMatchID)
VALUES 
(1, '2023-07-15', 'Lords', 3, 1, 1, 'Test', 'Aleem Dar', 3, 1),
(2, '2023-06-20', 'MCG', 2, 4, 2, 'Test', 'Kumar Dharmasena', 2, 5),
(3, '2023-05-30', 'Eden Gardens', 1, 6, 6, 'ODI', 'Richard Kettleborough', 6, 9),
(4, '2023-04-18', 'Gaddafi Stadium', 7, 1, 1, 'ODI', 'Rod Tucker', 7, 3),
(5, '2023-03-12', 'Wankhede Stadium', 1, 5, 5, 'T20', 'Marais Erasmus', 1, 8),
(6, '2023-02-25', 'Sharjah', 10, 1, 1, 'T20', 'Bruce Oxenford', 1, 11),
(7, '2023-01-18', 'SCG', 1, 2, 2, 'ODI', 'Paul Reiffel', 2, 14),
(8, '2022-12-10', 'Wanderers', 4, 1, 4, 'Test', 'Nigel Llong', 4, 13),
(9, '2022-11-02', 'Kensington Oval', 6, 1, 1, 'ODI', 'Joel Wilson', 6, 7),
(10, '2022-10-15', 'R. Premadasa Stadium', 8, 1, 1, 'T20', 'Richard Illingworth', 1, 10),
(11, '2022-09-09', 'Shere Bangla Stadium', 9, 1, 1, 'ODI', 'Michael Gough', 1, 12),
(12, '2022-08-23', 'Wankhede Stadium', 1, 12, 1, 'Test', 'Chris Gaffaney', 1, 4),
(13, '2022-07-14', 'Malahide', 11, 1, 1, 'T20', 'Ruchira Palliyaguruge', 1, 6),
(14, '2022-06-28', 'Harare Sports Club', 12, 1, 1, 'ODI', 'Richard Illingworth', 1, 2),
(15, '2022-05-18', 'VRA Ground', 13, 1, 1, 'ODI', 'Paul Reiffel', 1, 5);

-- drop table Performances;
-- CREATE TABLE Performances (PerformanceID INT PRIMARY KEY,MatchID INT,PlayerID INT,
 --   RunsScored INT,BallsFaced INT,Fours INT,Sixes INT,WicketsTaken INT,
  --  OversBowled DECIMAL(3,1),Catches INT,FOREIGN KEY (MatchID) REFERENCES Matches(MatchID),
   -- FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID));

drop  TABLE Performances;
CREATE TABLE Performances (
    PerformanceID VARCHAR(10) PRIMARY KEY,MatchID INT,PlayerID INT,
    RunsScored VARCHAR(50),BallsFaced VARCHAR(50),Fours VARCHAR(50),Sixes VARCHAR(50),
    WicketsTaken VARCHAR(50),OversBowled VARCHAR(50),Catches VARCHAR(50),
    FOREIGN KEY (MatchID) REFERENCES Matches(MatchID),
    FOREIGN KEY (PlayerID) REFERENCES Players(PlayerID));
    SELECT * FROM Performances ;
INSERT INTO Performances (PerformanceID, MatchID, PlayerID, RunsScored, BallsFaced, Fours, Sixes, WicketsTaken, OversBowled, Catches)
VALUES 
('P001', '1', '1', 'OneTwenty', 'TwoThirty', 'Fifteen', 'One', 'Zero', 'ZeroPointZero', 'Two'),
('P002', '2', '5', 'ThirtyFive', 'Sixty', 'Three', 'Zero', 'Four', 'TwentyTwoPointZero', 'One'),
('P003', '3', '9', 'FiftyFive', 'FortyFive', 'Seven', 'Two', 'One', 'TenPointZero', 'Zero'),
('P004', '4', '3', 'SeventySeven', 'EightyEight', 'Nine', 'One', 'Zero', 'ZeroPointZero', 'Two'),
('P005', '5', '8', 'Ninety', 'FiftyFive', 'Twelve', 'Three', 'One', 'FourPointZero', 'One'),
('P006', '6', '11', 'Fifteen', 'Twelve', 'Two', 'One', 'Two', 'FourPointZero', 'Zero'),
('P007', '7', '14', 'OneFortyFive', 'OneFifty', 'TwentyTwo', 'Five', 'Zero', 'ZeroPointZero', 'Zero'),
('P008', '8', '13', 'Sixty', 'SeventyFive', 'Seven', 'One', 'Two', 'TwelvePointZero', 'Two'),
('P009', '9', '7', 'OneHundredFive', 'NinetyEight', 'Fourteen', 'Three', 'Zero', 'ZeroPointZero', 'Zero'),
('P010', '10', '10', 'FortyEight', 'Forty', 'Six', 'One', 'Three', 'EightPointZero', 'Zero'),
('P011', '11', '12', 'ThirtyFive', 'TwentyEight', 'Four', 'Two', 'Two', 'FivePointZero', 'One'),
('P012', '12', '4', 'OneFifty', 'OneSixty', 'Twenty', 'Four', 'Zero', 'ZeroPointZero', 'One'),
('P013', '13', '6', 'SeventyTwo', 'SixtySeven', 'Eight', 'One', 'One', 'TenPointZero', 'Two'),
('P014', '14', '2', 'ThirtyThree', 'FortyFive', 'Four', 'One', 'Three', 'SixPointZero', 'Zero'),
('P015', '15', '5', 'FortyFour', 'FiftyFive', 'Five', 'Two', 'Zero', 'ZeroPointZero', 'One');


--  INSERT INTO Performances (PerformanceID, MatchID, PlayerID, RunsScored, BallsFaced, Fours, Sixes, WicketsTaken, OversBowled, Catches)
--  VALUES 
--  (1, 1, 1, 120, 230, 15, 1, 0, 0.0, 2),
--  (2, 2, 5, 35, 60, 3, 0, 4, 22.0, 1),
--  (3, 3, 9, 55, 45, 7, 2, 1, 10.0, 0),
--  (4, 4, 3, 77, 88, 9, 1, 0, 0.0, 2),
--  (5, 5, 8, 90, 55, 12, 3, 1, 4.0, 1),
--  (6, 6, 11, 15, 12, 2, 1, 2, 4.0, 0),
--  (7, 7, 14, 145, 150, 22, 5, 0, 0.0, 0),
--  (8, 8, 13, 60, 75, 7, 1, 2, 12.0, 2),
--  (9, 9, 7, 105, 98, 14, 3, 0, 0.0, 0),
--  (10, 10, 10, 48, 40, 6, 1, 3, 8.0, 0),
--  (11, 11, 12, 35, 28, 4, 2, 2, 5.0, 1),
--  (12, 12, 4, 150, 160, 20, 4, 0, 0.0, 1),
--  (13, 13, 6, 72, 67, 8, 1, 1, 10.0, 2),
--  (14, 14, 2, 33, 45, 4, 1, 3, 6.0, 0),
--  (15, 15, 5, 44, 55, 5, 2, 0, 0.0, 1);



ALTER TABLE Performances
DROP FOREIGN KEY Performances_ibfk_1,  
DROP FOREIGN KEY Performances_ibfk_2;  

ALTER TABLE Matches
DROP FOREIGN KEY Matches_ibfk_1,  
DROP FOREIGN KEY Matches_ibfk_2,  
DROP FOREIGN KEY Matches_ibfk_3,  
DROP FOREIGN KEY Matches_ibfk_4, 
DROP FOREIGN KEY Matches_ibfk_5;  

ALTER TABLE Teams
DROP FOREIGN KEY Teams_ibfk_1; 

