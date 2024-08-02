use typer;

CREATE TABLE cricket_players (player_id INT,player_name VARCHAR(100),team_name VARCHAR(100),
    matches_played INT,total_runs INT,total_wickets INT);

INSERT INTO cricket_players (player_id, player_name, team_name, matches_played, total_runs, total_wickets) VALUES
(1, 'Virat Kohli', 'India', 254, 12040, 999),
(2, 'Sachin Tendulkar', 'India', 152, 6244, 24),
(3, 'Kane Williamson', 'New Zealand', 153, 7368, 29),
(4, 'Steve Smith', 'Australia', 144, 7540, 17),
(5, 'Ajinkya Rahane', 'India', 83, 4161, 0),
(6, 'Ben Stokes', 'England', 71, 4428, 167),
(7, 'David Warner', 'Australia', 123, 5455, 4),
(8, 'Rohit Sharma', 'India', 224, 9205, 8),
(9, 'Quinton de Kock', 'South Africa', 121, 5135, 4),
(10, 'Jos Buttler', 'England', 151, 4000, 0),
(11, 'Alaister Cook', 'England', 210, 6500, 260),
(12, 'Mitchell Starc', 'Australia', 74, 1022, 140),
(13, 'Jasprit Bumrah', 'India', 67, 19, 108),
(14, 'Trent Boult', 'New Zealand', 93, 624, 169),
(15, 'Pat Cummins', 'Australia', 64, 768, 164),
(16, 'Kagiso Rabada', 'South Africa', 75, 115, 144),
(17, 'R Ashwin', 'India', 218, 6605, 240),
(18, 'Aaron Finch', 'Australia', 132, 5232, 0),
(19, 'Faf du Plessis', 'South Africa', 143, 5507, 0),
(20, 'Rishabh Pant', 'India', 40, 373, 78);

SELECT * FROM cricket_players;

SELECT count(*),team_name from cricket_players
group by team_name;

select sum(total_runs) as total_runs_of_a_team, team_name from cricket_players
group by team_name having total_runs_of_a_team >12000;