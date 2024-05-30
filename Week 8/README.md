# CCXI (Code Cricket XI) Database Project

## Overview

The CCXI (Code Cricket XI) project is a comprehensive database designed to manage and analyze cricket-related data from various leagues. It includes tables for storing player statistics, team details, match information, and user predictions. The database aims to provide insights into player performance, team dynamics, and match outcomes across multiple cricket leagues.

## Files and Tables

### Files in the Project

- **BowlingRecords.csv & BowlingRecords.xlsx**: Contains detailed bowling statistics.
- **CCXI_db.sql**: SQL script for creating and populating the CCXI database.
- **Cricket data pt1.xlsx**: Includes player and team statistics.
- **Cricket data.xlsx**: Data from PSL, BBL, and IPL leagues.
- **players data.xlsx**: Player data including performance metrics.

### Tables in CCXI

1. **Users**: Stores user details including usernames, emails, and join dates.
2. **Leagues**: Contains information about cricket leagues such as league names and statuses.
3. **Teams**: Stores team information including team names, home grounds, and coaches.
4. **Matches**: Records match details including match dates, venues, and participating teams.
5. **Players**: Stores player profiles with attributes like player names, positions, and nationalities.
6. **Team_Players**: Links teams and players, indicating which players are part of which teams.
7. **Batting_Records**: Records batting statistics such as total runs, highest scores, and strike rates.
8. **Bowling_Records**: Contains bowling statistics including wickets taken, economy rates, and best bowling figures.
9. **User_Predictions**: Stores predictions made by users on match outcomes.

## Queries and Techniques

### Queries

1. **Find Playing XI for a Team**:
   ```sql
   SELECT p.player_name
   FROM Players p
   JOIN Team_Players tp ON p.player_id = tp.player_id
   JOIN Teams t ON tp.team_id = t.team_id
   WHERE t.team_name = 'Brisbane Heat';
   -- Retrieves the names of players who are part of the playing XI for the specified team.
   ```
2. **Find all teams that do not have exactly "11" players**:
   ```sql
   SELECT t.team_name, COUNT(tp.player_id) AS num_players
   FROM Teams t
   LEFT JOIN Team_Players tp ON t.team_id = tp.team_id
   GROUP BY t.team_name
   HAVING COUNT(tp.player_id) <> 11;
   -- Lists teams that do not have exactly 11 players.
   ```
3. **Retrieve the captain for each team**:
   ```sql
   SELECT t.team_name, p.player_name AS captain_name
   FROM Players p
   JOIN Teams t ON p.player_id = t.captain_id;
   -- Retrieves the captain for each team.
   ```
4. **Find the most popular team based on user favorites**:
   ```sql
   SELECT t.team_id, t.team_name, COUNT(u.user_id) AS num_users
   FROM Teams t
   JOIN User_FavoriteTeams uf ON t.team_id = uf.team_id
   JOIN Users u ON uf.user_id = u.user_id
   GROUP BY t.team_id, t.team_name
   ORDER BY num_users DESC;
   -- Lists teams sorted by the number of users who have favorited them
   ```
5. **Retrieve the top 5 players with the highest strike rates**:
   ```sql
   SELECT p.player_name, br.strike_rate, br.sixes
   FROM Batting_Records br
   JOIN Players p ON br.player_id = p.player_id
   ORDER BY br.strike_rate DESC
   LIMIT 5;
   -- Lists players with the highest strike rates along with the number of sixes they have hit.
   ```
6. **To find out the captain, their nationality, home ground and the team they belong to**:
   ```sql
   SELECT
   p.player_name AS captain_name,
   p.nationality,
   t.team_name,
   t.home_ground,
   l.league_name
   FROM Players p
   JOIN Teams t ON p.team_id = t.team_id
   JOIN Leagues l ON t.league_id = l.league_id
   WHERE p.is_captain = true;
   ```
7. **Most Popular league based on the user's favourites**:
   ```sql
   SELECT 
   l.league_id, 
   l.league_name, 
   COUNT(ft.user_id) AS num_users
   FROM Leagues l
   JOIN
   Teams t ON l.league_id = t.league_id
   JOIN 
   User_FavouriteTeams ft ON t.team_id = ft.team_id
   GROUP BY
   l.league_id, l.league_name
   ORDER BY
   num_users DESC;
   ```
8. **Most engaged users by analyzing their activity data such as the number of predictions they made or the number of logins:**
   ```sql
   SELECT
   U.username,
   COUNT(P.prediction_id) AS prediction_count
   FROM
   Users U
   JOIN
   User_Predictions P ON U.user_id = P.user_id
   GROUP BY
   U.user_id, U.username
   ORDER BY
   prediction_count DESC
   LIMIT 1;
   ```
9. **Batting records for a specific player in a particular league:**
    ```sql
    -- with player's name, total runs scored, highest score, average, and number of centuries.
    SELECT
    p.player_name,
    br.total_tournament_runs AS total_runs,
    br.highest_score,
    br.average,
    br.hundreds
    FROM 
    BattingRecords br
    JOIN 
    Players p ON br.player_id = p.player_id
    WHERE 
    br.league_id = 2  -- Replace {league_id} with the specific league ID
    AND 
    p.player_name = 'Virat Kohli';  -- Replace {player_name} with the specific player's name
    ```
10. **Bowling records for a specific player in a particular league:**
    ```sql
    -- with player's name, total wickets taken, best bowling figures (wickets/runs), average, and economy rate.
    SELECT
    p.player_name,
    br.wickets,
    CONCAT(br.wickets, '/', br.runs) AS best_bowling_figures,
    br.average,
    br.economy
    FROM 
    BowlingRecords br
    JOIN 
    Players p ON br.player_id = p.player_id
    WHERE 
    br.league_id = 1  -- Replace 1 with the specific league ID
    AND 
    p.player_name = 'Shaheen Shah Afridi';  -- Replace 'Shaheen Shah Afridi' with the specific player's name
    ```
11. **Top 5 bowlers with the best bowling averages in the tournament:**
    ```sql
    SELECT
    p.player_name,
    br.average,
    br.economy,
    br.maidens
    FROM 
    BowlingRecords br
    JOIN 
    Players p ON br.player_id = p.player_id
    ORDER BY 
    br.average DESC
    LIMIT 5;
    ```
12. **Using specific types of join:**
    ```sql
    -- Players along with their respective coaches.
    SELECT 
    Players.player_id,
    Players.player_name,
    Players.position,
    Teams.team_name,
    Teams.head_coach,
    Teams.batting_coach,
    Teams.bowling_coach,
    Teams.fielding_coach
    FROM 
    Players
    INNER JOIN 
    Teams ON Players.team_id = Teams.team_id;
    ```
13. **Leagues along with users who have accounts associated with those leagues:**
    ```sql
    SELECT 
    Leagues.league_id,
    Leagues.league_name,
    Leagues.status,
    Users.username,
    Users.email,
    Users.join_date,
    Users.last_login
    FROM 
    Leagues
    RIGHT JOIN 
    Teams ON Leagues.league_id = Teams.league_id
    RIGHT JOIN 
    Users ON Teams.team_id = Users.user_id;
    ```
14. **Stored Function that calculates the total runs scored by a player in a specific league from the BattingRecords table:**
    ```sql
    -- Ensuring to use the correct database
    USE CCXI;
    -- Drop the function if it already exists.
    DROP FUNCTION IF EXISTS GetTotalRuns;

    -- Create the stored function

    DELIMITER //
    CREATE FUNCTION GetTotalRuns(p_player_id INT, p_league_id INT) RETURNS INT
    DETERMINISTIC
    READS SQL DATA
    BEGIN
    DECLARE v_total_runs INT;

    SELECT COALESCE(SUM(total_tournament_runs), 0) -- Used COALESCE to ensure that if there are no rows matching the criteria, the function returns 0 instead of NULL.
    INTO v_total_runs
    FROM BattingRecords
    WHERE player_id = p_player_id AND league_id = p_league_id;
    
    RETURN v_total_runs;
    END //

    DELIMITER ;
    ```
15. **Usage of the GetTotalRuns function:**
    ```sql
    SELECT 
    player_id,
    player_name,
    GetTotalRuns(player_id, 1) AS total_runs_in_league_1
    FROM 
    Players
    WHERE 
    team_id = 1;
    ```
16. **Stored Procedure to update the last_login timestamp of a user in the Users table when they log in:**
    ```sql
    -- First, ensure you are using the correct database
    USE CCXI;

    -- Drop the procedure if it already exists.
    DROP PROCEDURE IF EXISTS UpdateLastLogin;

    -- Create the stored procedure
    DELIMITER //

    CREATE PROCEDURE UpdateLastLogin (IN p_user_id INT)

    BEGIN
    UPDATE Users
    SET last_login = CURRENT_TIMESTAMP()
    WHERE user_id = p_user_id;
    END //

    DELIMITER ;
    ```
17. **Before calling the stored procedure:**
    ```sql
    SELECT user_id, username, last_login
    FROM Users
    WHERE user_id = 1;
    ```
18. **Call the stored procedure to update last login for user_id = 1:**
    ```sql
    CALL UpdateLastLogin(1);
    ```
19. **After calling the stored procedure:**
    ```sql
    SELECT user_id, username, last_login
    FROM Users
    WHERE user_id = 1;
    ```
20. **Trigger:**
    ```sql
    -- The purpose of this trigger is to enforce the rule that each team can have only one captain at a time.

    DELIMITER //

    CREATE TRIGGER trg_EnsureOneCaptainPerTeam
    BEFORE INSERT ON Players
    FOR EACH ROW
    BEGIN
    DECLARE captain_count INT;
    
    IF NEW.is_captain = true THEN
    SET captain_count = (SELECT COUNT(*) FROM Players WHERE team_id = NEW.team_id AND is_captain = true);
        
        IF captain_count > 0 THEN
            SIGNAL SQLSTATE '45000'
            SET MESSAGE_TEXT = 'Each team can have only one captain at a time.';
        END IF;
    END IF;
    END //

    DELIMITER ;
    ```
21. **Drop the trigger if already exists:**
    ```sql
    DROP TRIGGER IF EXISTS trg_EnsureOneCaptainPerTeam;
    ```
22. **Before adding the captain:**
    ```sql
    SELECT * FROM Players WHERE is_captain = true;
    ```
23. **Attempt to add a captain to a team:**
    ```sql
    INSERT INTO Players (player_id, player_name, team_id, position, batting_style, bowling_style, nationality, is_captain)
    VALUES (1, 'Captain Name', 1, 'Batsman', 'Right-handed', 'None', 'Nationality', true);
    -- This should throw an error as there is already a captain for this team.
    ```
24. **View:**
    ```sql
    -- The UserTeamPlayerInfo view combines information from the Users, Teams, Players, and Matches tables.

    CREATE VIEW UserTeamPlayerInfo AS
    SELECT u.user_id, u.username, u.email,
    t.team_id, t.team_name, t.home_ground,
    p.player_id, p.player_name, p.position,
    m.match_id, m.match_date, m.venue
    FROM Users u
    JOIN User_FavouriteTeams uf ON u.user_id = uf.user_id
    JOIN Teams t ON uf.team_id = t.team_id
    LEFT JOIN Players p ON t.team_id = p.team_id
    LEFT JOIN Matches m ON t.team_id = m.team1_id OR t.team_id = m.team2_id;
    ```
25. **Query using the view to produce a logically arranged result set:**
    ```sql
    SELECT user_id, username, email,
    team_id, team_name, home_ground,
    player_id, player_name, position,
    match_id, match_date, venue
    FROM UserTeamPlayerInfo
    WHERE user_id = 3;  -- Replace with your desired user_id for analysis
    ```

## **Important Information**
### Views

Views provide a way to save and reuse SQL queries, offering convenience, security, and performance benefits. For example, the `UserTeamPlayerInfo` view combines information from multiple tables to facilitate user and team analytics.

### Stored Functions

Stored functions, such as the `GetTotalRuns` function, enhance code reusability and maintain consistency in database operations. They provide a way to perform specific calculations or data manipulations that can't be easily achieved directly in SQL queries.

### Stored Procedures

Stored procedures, like the `UpdateLastLogin` procedure, provide reusable and efficient ways to encapsulate and execute database logic. They enhance performance, security, and maintainability in applications by centralizing SQL code execution.

### GROUP BY and HAVING

The `GROUP BY` clause is used to group rows that have the same values into summary rows. It is often used with aggregate functions such as `SUM`, `COUNT`, `AVG`, etc. The `HAVING` clause is used to filter records returned by `GROUP BY`.

## **NOTE**
Due to recurring SQL crashes that prevented the creation of an ER diagram, the reverse engineering process was not possible. As a result, I do not have the ER diagram available.

## Purpose

The purpose of the CCXI database project is to compile comprehensive cricket data from various leagues, clean and prepare this data for analysis, and store it in a structured database. This database can then be used for detailed analysis, reporting, and decision-making in cricket management and analytics.

## Future Implications

This project has equipped me with valuable skills in database management, SQL querying, data cleaning, and integration. It has also provided insights into cricket analytics and statistics, enhancing my ability to work with sports-related data.

## What Did I Learn?

- Enhanced skills in SQL, database design, and management.
- Gained insights into cricket analytics and statistics.
- Improved ability to clean and prepare data for analysis.
