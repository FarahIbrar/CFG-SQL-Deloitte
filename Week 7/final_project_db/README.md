# CCXI (Code Cricket XI) Database Project

## Overview

**Database Name:** CCXI (Code Cricket XI)

**Why This Name?**

I chose the name "Code Cricket XI" because I love cricket. It's my passion, and I wanted to combine my enthusiasm for cricket with my technical skills to create a robust and comprehensive database.

### Leagues in CCXI

The CCXI database features three prominent leagues:

1. **Pakistan Super League (PSL):**
   - **Overview:** The PSL, established in 2015, features franchises representing major cities in Pakistan. It follows a similar format to other T20 leagues, with a group stage and knockout rounds (My Personal Favourite Cricket League).
   - **Significance:** The PSL has been pivotal in bringing top-tier cricket back to Pakistan, providing a platform for emerging Pakistani talent and rekindling the nation's passion for cricket. It is also my favorite league due to its competitive nature and the quality of local and international players.

2. **Indian Premier League (IPL):**
   - **Overview:** The IPL is one of the most popular and lucrative professional Twenty20 cricket leagues globally. Established in 2008, it features city-based franchises that compete in a double round-robin format followed by playoffs.
   - **Significance:** Known for its high-octane matches, international star players, and significant commercial success, the IPL has revolutionized cricket viewership and sponsorship.

3. **Big Bash League (BBL):**
   - **Overview:** The BBL is Australia’s premier Twenty20 cricket competition. Launched in 2011, it has gained substantial popularity for its family-friendly atmosphere and thrilling gameplay.
   - **Significance:** The league has helped promote cricket in Australia during the summer holidays, attracting large crowds and a wide television audience with its entertaining and fast-paced matches.

## Tables and Their Relationships

### 1. **Users**
   - **Description:** Stores information about users who have accounts on CCXI.
   - **Columns:**
     - `user_id` (Primary Key)
     - `username`
     - `email`
     - `password`
     - `join_date`
     - `last_login`

### 2. **Leagues**
   - **Description:** Contains details about cricket leagues.
   - **Columns:**
     - `league_id` (Primary Key)
     - `league_name`
     - `start_date`
     - `end_date`
     - `status`

### 3. **Teams**
   - **Description:** Represents cricket teams participating in leagues.
   - **Columns:**
     - `team_id` (Primary Key)
     - `team_name`
     - `league_id` (Foreign Key referencing Leagues)
     - `home_ground`
     - `head_coach`
     - `batting_coach`
     - `bowling_coach`

### 4. **Matches**
   - **Description:** Details of matches within leagues.
   - **Columns:**
     - `match_id` (Primary Key)
     - `league_id` (Foreign Key referencing Leagues)
     - `team1_id` (Foreign Key referencing Teams)
     - `team2_id` (Foreign Key referencing Teams)
     - `match_date`
     - `venue`
     - `result`

### 5. **Players**
   - **Description:** Information about players.
   - **Columns:**
     - `player_id` (Primary Key)
     - `first_name`
     - `last_name`
     - `dob`
     - `nationality`

### 6. **Team_Players**
   - **Description:** Associative table linking players to teams.
   - **Columns:**
     - `team_player_id` (Primary Key)
     - `team_id` (Foreign Key referencing Teams)
     - `player_id` (Foreign Key referencing Players)
     - `start_date`
     - `end_date`

### 7. **Batting_Records**
   - **Description:** Records of batting performances by players in matches.
   - **Columns:**
     - `batting_record_id` (Primary Key)
     - `match_id` (Foreign Key referencing Matches)
     - `player_id` (Foreign Key referencing Players)
     - `runs_scored`
     - `balls_faced`
     - `fours`
     - `sixes`

### 8. **Bowling_Records**
   - **Description:** Records of bowling performances by players in matches.
   - **Columns:**
     - `bowling_record_id` (Primary Key)
     - `match_id` (Foreign Key referencing Matches)
     - `player_id` (Foreign Key referencing Players)
     - `overs`
     - `maidens`
     - `runs_conceded`
     - `wickets_taken`

### 9. **User_Predictions**
   - **Description:** Tracks user predictions for match outcomes.
   - **Columns:**
     - `prediction_id` (Primary Key)
     - `user_id` (Foreign Key referencing Users)
     - `match_id` (Foreign Key referencing Matches)
     - `predicted_winner`
     - `prediction_date`
     - `points_awarded`

## Relationships

- **Users** can make predictions on matches via the **User_Predictions** table.
- **Leagues** contain multiple **Teams**.
- **Teams** consist of multiple **Players** through the **Team_Players** table.
- **Leagues** host multiple **Matches**.
- **Matches** record batting and bowling statistics for **Players** through the **Batting_Records** and **Bowling_Records** tables.
- **User_Predictions** link **Users** to **Matches** and store their predictions.

## Queries and Techniques

### Queries

**Find Playing XI for a Team:**
To find out the playing XI for any team (change t.team_name to the team you want).
```sql
SELECT p.first_name, p.last_name
FROM Players p
JOIN Team_Players tp ON p.player_id = tp.player_id
JOIN Teams t ON tp.team_id = t.team_id
WHERE t.team_name = 'Brisbane Heat';
-- This query retrieves the names of players who are part of the playing XI for the specified team.
```

**Finding if all teams have exactly "11" players:**
```sql
SELECT t.team_name, COUNT(p.player_id) AS num_players
FROM Teams t
LEFT JOIN Players p ON t.team_id = p.team_id
GROUP BY t.team_name
HAVING COUNT(p.player_id) <> 11;
-- This query gives a list of teams that do not have exactly 11 players. 
-- If a team is missing players or has more than 11 players, it will be shown in the result. 
-- If a team has exactly 11 players, it will not be included in the result.
```

## Techniques Used
- **Normalization:** Ensuring data is organized to minimize redundancy and improve data integrity.
- **Foreign Keys:** Establishing relationships between tables to maintain data consistency.
- **Indexes:** Improving query performance by creating indexes on frequently searched columns.
- **Subqueries:** Utilizing subqueries to fetch intermediate results used in the main query.
- **GROUP BY and HAVING:** Aggregating data and applying conditions on aggregated data to filter results.
- **Joins:** Using various types of joins (INNER JOIN, LEFT JOIN) to combine rows from two or more tables based on related columns.
- **COUNT:** Employing the COUNT function to count the number of items in a group, particularly useful in determining the number of players in a team.

## Purpose
- The CCXI database is designed to manage and analyze cricket-related data efficiently.
- It aims to provide a comprehensive solution for cricket leagues, teams, players, and user interactions.
- This project demonstrates my ability to design and implement a complex database system, showcasing my skills in database normalization, relationship management, query optimization, and data integrity.
- This structured and detailed overview of the CCXI database highlights my passion for cricket and showcases my technical skills in database design, making it an attractive and impressive piece for recruiters.
