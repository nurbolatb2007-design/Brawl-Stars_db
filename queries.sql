-- 1. Get all players and their clubs (JOIN)
-- This query lists every player along with the name of the club they currently belong to.
-- It joins three tables to link a player, through their membership, to the club's name.
SELECT p.display_name, c.name AS club_name
FROM Player p
JOIN ClubMembership m ON p.player_id = m.player_id
JOIN Club c ON m.club_id = c.club_id;

-- 2. Count of players in each club (JOIN + Aggregate)
-- The query calculates the total number of players currently in each club.
-- Using a LEFT JOIN ensures that even clubs with zero members are included in the result list.
SELECT c.name AS club_name, COUNT(m.player_id) AS members_count
FROM Club c
LEFT JOIN ClubMembership m ON c.club_id = m.club_id
GROUP BY c.name;

-- 3. Total number of matches played
-- This is a simple aggregate query that returns the total count of all recorded matches in the database.
-- It provides a quick measure of the overall gaming activity captured in the system.
SELECT COUNT(*) AS total_matches FROM Match;

-- 4. List of tournaments showing the champion club (JOIN + Filter + Aggregate)
-- The query finds all completed tournaments and identifies the champion club for each one.
-- It links information about the tournament, season, club, and its final result using a filter for 'champion'.
SELECT 
  t.name AS tournament_name,
  s.name AS season_name,
  c.name AS champion_club,
  ct.points AS champion_points
FROM Tournament t
JOIN Season s ON t.season_id = s.season_id
JOIN ClubTournament ct ON t.tournament_id = ct.tournament_id
JOIN Club c ON ct.club_id = c.club_id
WHERE ct.result = 'champion';

-- 5. Players who have more than 6000 trophies
-- This query filters the Player table to show the names of only those players whose current trophy count exceeds 6000.
-- It is used to quickly identify high-ranking, competitive players.
SELECT display_name, trophies FROM Player WHERE trophies > 6000;

-- 6. Average tournament points per club (Aggregate)
-- The query calculates the average number of points a club has earned throughout all its tournament participations.
-- The results are aggregated by club name, giving an estimate of their consistent performance.
SELECT c.name, AVG(ct.points) AS avg_points
FROM Club c
JOIN ClubTournament ct ON c.club_id = ct.club_id
GROUP BY c.name;

-- 7. Maximum kills in a single match (Aggregate)
-- This simple aggregate query finds the highest number of kills achieved by any single participant in any registered match.
-- It is used to quickly determine the all-time record holder for this specific metric.
SELECT MAX(kills) AS max_kills FROM MatchParticipant;

-- 8. Map names and the count of matches played on each (JOIN + Aggregate)
-- The query counts how many times each specific game map has been used for a match.
-- Using a LEFT JOIN ensures that even maps on which no matches have been played are included in the list.
SELECT m.name AS map_name, COUNT(ma.match_id) AS matches_played
FROM Map m
LEFT JOIN Match ma ON m.map_id = ma.map_id
GROUP BY m.map_id, m.name;

-- 9. Players and their Brawlers (JOIN)
-- The query outputs a detailed list showing every Brawler owned by each player in the game.
-- Additionally, the current upgrade level of that Brawler for the specific player is included.
SELECT p.display_name, b.name AS brawler, pb.level
FROM Player p
JOIN PlayerBrawler pb ON p.player_id = pb.player_id
JOIN Brawler b ON pb.brawler_id = b.brawler_id;

-- 10. Player with the highest total purchases (Subquery/Aggregate)
-- This query finds the single player who has made the largest total amount of shop purchases.
-- It aggregates all spending by player and selects the leader in this monetary ranking.
SELECT p.display_name, SUM(sp.amount) AS total_spent
FROM Player p
JOIN ShopPurchase sp ON p.player_id = sp.player_id
GROUP BY p.player_id
ORDER BY total_spent DESC
LIMIT 1;

-- 11. All tournaments, the season, and region where they were held (JOIN)
-- The query combines information about tournaments and the seasons in which they took place.
-- The result is a list of all tournaments, detailing their region of conduction and the corresponding season name.
SELECT t.name AS tournament, s.name AS season, t.region
FROM Tournament t
JOIN Season s ON t.season_id = s.season_id;

-- 12. Captain players (Filter by bridge role)
-- The query identifies all players who currently hold the 'captain' role within their club.
-- It links information about the player, their current membership, and the club's name, filtering on the membership role.
SELECT p.display_name, c.name AS club
FROM Player p
JOIN ClubMembership m ON p.player_id = m.player_id
JOIN Club c ON m.club_id = c.club_id
WHERE m.role = 'captain';

-- 13. All match participants with their team information and club (JOIN)
-- This query details the participants of every match, showing their name, in-match team tag, and current club name.
-- Using LEFT JOINs allows the inclusion of players who are not currently members of any club.
SELECT mp.match_id, p.display_name, mp.team_tag, c.name as club
FROM MatchParticipant mp
JOIN Player p ON mp.player_id = p.player_id
LEFT JOIN ClubMembership cm ON cm.player_id = p.player_id
LEFT JOIN Club c ON cm.club_id = c.club_id;

-- 14. Count of championships for each club (Aggregate with filter)
-- The query counts how many times each club has won the 'champion' title in various tournaments.
-- It filters the tournament results by the 'champion' status and groups the count by the club's name.
SELECT c.name, COUNT(ct.result) AS titles
FROM Club c
JOIN ClubTournament ct ON c.club_id = ct.club_id
WHERE ct.result = 'champion'
GROUP BY c.name;

-- 15. List of all matches and the winning players (JOIN + filter)
-- The query generates a list of all players who won the matches they participated in.
-- For each winner, it specifies the match ID, the player's name, and the Brawler they used.
SELECT ma.match_id, p.display_name, b.name AS brawler
FROM MatchParticipant ma
JOIN Player p ON ma.player_id = p.player_id
JOIN Brawler b ON ma.brawler_id = b.brawler_id
WHERE ma.is_winner = 1;

-- 16. Top 5 Brawlers by pick rate (Aggregate)
-- This query calculates the total number of times each Brawler was used (picked) across all matches.
-- It outputs the top 5 most popular Brawlers based on their frequency of selection by players.
SELECT 
    b.name AS brawler_name, 
    COUNT(mp.match_id) AS total_picks
FROM 
    Brawler b
JOIN 
    MatchParticipant mp ON mp.brawler_id = b.brawler_id
GROUP BY 
    b.name
ORDER BY 
    total_picks DESC
LIMIT 5;

-- 17. All Brawlers with a player level greater than 5 (JOIN + DISTINCT)
-- The query finds all unique Brawlers for whom at least one player has an upgrade level greater than 5.
-- It shows which Brawlers are actively being powered up and developed by the player base.
SELECT DISTINCT b.name
FROM Brawler b
JOIN PlayerBrawler pb ON b.brawler_id = pb.brawler_id
WHERE pb.level > 5;

-- 18. Average number of participants per match (Aggregate, Nested Query)
-- The query first uses a subquery to calculate the actual number of participants in each individual match.
-- It then finds the arithmetic average of this count across all matches, giving the average player density per game.
SELECT AVG(cnt) AS avg_participants
FROM (
  SELECT match_id, COUNT(*) AS cnt
  FROM MatchParticipant
  GROUP BY match_id
);

-- 19. Player and maximum trophy gain in a single match (Correlated Subquery)
-- This query outputs each player's name along with their maximum single-instance trophy gain (delta).
-- A separate (correlated) subquery runs for each player to find the largest positive change in their trophy history.
SELECT p.display_name,
  (SELECT MAX(th.delta)
  FROM TrophyHistory th
  WHERE th.player_id = p.player_id
  ) AS max_trophies_gain
FROM Player p;

-- 20. Clubs and the number of distinct member countries (JOIN, GROUP BY)
-- The query determines the count of unique countries represented by the players within each club.
-- This helps assess the international diversity of a club's roster, grouping the results by the club's name.
SELECT c.name AS club_name, COUNT(DISTINCT p.country) AS countries_count
FROM Club c
JOIN ClubMembership m ON c.club_id = m.club_id
JOIN Player p ON m.player_id = p.player_id
GROUP BY c.name;

-- 21. Top Damage Dealer in every match (Window Function)
-- This query identifies the player who dealt the maximum amount of damage in each individual match.
-- It uses the ROW_NUMBER() window function partitioned by match_id to rank players' damage within each game.
SELECT
    p.display_name,
    t.match_id,
    t.damage_dealt
FROM (
    SELECT
        player_id,
        match_id,
        damage AS damage_dealt,
        ROW_NUMBER() OVER (
            PARTITION BY match_id 
            ORDER BY damage DESC
        ) AS rn
    FROM MatchParticipant
) t
JOIN Player p ON t.player_id = p.player_id
WHERE t.rn = 1;
-- 22. Brawler with the highest average kills (Aggregate)
-- This query calculates the average number of kills for every Brawler across all matches they were used in.
-- It helps to identify which Brawlers, on average, are the most effective in terms of Kills Per Match (KPM).
SELECT b.name AS brawler_name, AVG(mp.kills) AS average_kills
FROM Brawler b
JOIN MatchParticipant mp ON b.brawler_id = mp.brawler_id
GROUP BY b.name
ORDER BY average_kills DESC
LIMIT 1;

-- 23. Top 5 clubs by member count (Modified for guaranteed output)
-- This query lists the top 5 clubs with the most members in the database. 
-- It demonstrates aggregation and ordering based on the size of the club.
SELECT c.name AS club_name, COUNT(cm.player_id) AS member_count
FROM Club c
JOIN ClubMembership cm ON c.club_id = cm.club_id
GROUP BY c.name
ORDER BY member_count DESC
LIMIT 5;

-- 24. Top 10 highest-trophy players who are NOT captains (Modified for guaranteed output)
-- This query finds the 10 players with the highest trophy count who are currently not a 'captain' in any club.
-- It identifies highly skilled players who are not in a club leadership position.
SELECT p.display_name, p.trophies
FROM Player p
WHERE p.player_id NOT IN (
    SELECT player_id 
    FROM ClubMembership 
    WHERE role = 'captain'
  )
ORDER BY p.trophies DESC
LIMIT 10;

-- 25. Average Brawler level across all players (Aggregate)
-- This simple query calculates the overall average level of Brawlers owned by players across the entire database.
-- It can be used as a metric for the general progression or power level of the player base.
SELECT AVG(level) AS overall_avg_brawler_level
FROM PlayerBrawler;

-- 26. Top 5 players by total shop purchase amount (Aggregate)
-- This query finds the top 5 players based on the total monetary amount they have spent in the shop.
-- It demonstrates aggregation and ordering based on the total transaction value.
SELECT p.display_name, SUM(sp.amount) AS total_spent
FROM Player p
JOIN ShopPurchase sp ON p.player_id = sp.player_id
GROUP BY p.display_name
ORDER BY total_spent DESC
LIMIT 5;

-- 27. Total kills achieved on each map (JOIN + Aggregate)
-- This query calculates the total number of kills registered across all matches played on each specific map.
-- It helps analyze which maps generate the highest cumulative kill counts.
SELECT m.name AS map_name, SUM(mp.kills) AS total_kills
FROM Map m
JOIN "Match" ma ON m.map_id = ma.map_id
JOIN MatchParticipant mp ON ma.match_id = mp.match_id
GROUP BY m.name
ORDER BY total_kills DESC;

-- 28. Brawler Win Rate (New Query to ensure output)
-- This query calculates the win percentage for each Brawler across all matches they participated in.
-- It is a key metric for meta-game analysis, showing which Brawlers are most successful.
SELECT 
    b.name AS brawler_name,
    CAST(SUM(CASE WHEN mp.is_winner = 1 THEN 1 ELSE 0 END) AS REAL) * 100 / COUNT(mp.match_id) AS win_rate_percentage
FROM 
    Brawler b
JOIN 
    MatchParticipant mp ON b.brawler_id = mp.brawler_id
GROUP BY 
    b.name
ORDER BY 
    win_rate_percentage DESC;

-- 29. Total trophies gained and lost across the entire database history (Aggregate)
-- This query calculates the net sum of all trophy changes recorded in the TrophyHistory table.
-- The result helps reflect the overall trophy economy and total gains across the game.
SELECT SUM(delta) AS net_trophy_change, SUM(CASE WHEN delta > 0 THEN delta ELSE 0 END) AS total_trophies_gained
FROM TrophyHistory;

-- 30. Count of all unique roles in club membership (New Query to ensure output)
-- This query counts the total number of players assigned to each unique role (e.g., Member, Senior, Captain) across all clubs.
-- It provides a quick overview of the organizational distribution within the entire club system.
SELECT 
    cm.role, 
    COUNT(cm.player_id) AS role_count
FROM 
    ClubMembership cm
GROUP BY 
    cm.role
ORDER BY 
    role_count DESC;