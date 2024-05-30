# Overview of Final Project Database Files

## File Summaries

### BowlingRecords.csv & BowlingRecords.xlsx
These files contain bowling records with the following fields:
- `player_name`
- `player_id`
- `league_id`
- `total_matches_played`
- `total_innings_played`
- `overs`
- `maidens`
- `runs`
- `wickets`
- `average`
- `economy`
- `strike_rate`

### CCXI_db.sql
This file contains the final script for the CCXI database. It includes all the necessary SQL commands to create and populate the database with relevant cricket data.

### Cricket data pt1.xlsx
This file includes 6 sheets with various formulas for extracting, cleaning, and preparing cricket data. It contains detailed player and match statistics for three leagues:
- Player statistics: `player_name`, `player_id`, `league_id`, `total_matches_played`, `total_innings_played`, `overs`, `maidens`, `runs`, `wickets`, `average`, `economy`, `strike_rate`
- Team statistics: `Player`, `Matches`, `Innings`, `Runs`, `Highest Score`, `Average`, `Strike Rate`, `Hundreds`, `Fifties`, `Ducks`, `Fours`, `Sixes`
- Bowling statistics: `Player`, `Span`, `Matches`, `Innings`, `Overs`, `Maidens`, `Runs`, `Wickets`, `Average`, `Economy`, `Strike Rate`

### Cricket data.xlsx
This file includes data from the PSL, BBL, and IPL leagues with the following fields:
- `Team 1`
- `Team 2`
- `Winner`
- `Margin`
- `Home Ground`
- `Match Date`
- `League`

### players data.xlsx
This file contains player data with the following fields:
- `player_name`
- `player_id`
- `league_id`
- `total_matches_played`
- `total_innings_played`
- `total_tournament_runs`
- `highest_score`
- `average`
- `strike_rate`
- `hundreds`
- `fifties`
- `ducks`
- `fours`
- `sixes`

## Techniques Used
- **Data Cleaning and Preparation**: Extensive use of formulas in Excel to clean and prepare the data for analysis.
- **Data Integration**: Combining data from multiple sources and formats into a cohesive database.
- **SQL Scripting**: Writing and executing SQL scripts to create and populate the database.

## Purpose
The purpose of this project is to compile comprehensive cricket data from various leagues and formats, clean and prepare this data for analysis, and store it in a structured database. This database can then be used for detailed analysis and reporting on cricket statistics.

## Additional Notes
- The `.xlsx` files contain extensive data which may require downloading to preview fully.
- For a detailed exploration of the code and database structure, open the `CCXI_db.sql` file.
- More information on the project, including the final project code, can be found in the README file located in the main Week 8 folder.
