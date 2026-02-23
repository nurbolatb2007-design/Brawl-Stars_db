-- ===================================
-- 1. СЕЗОНЫ (5 записей)
-- ===================================
INSERT INTO Season (name, start_date, end_date) VALUES
('Spring 2025', '2025-03-01', '2025-05-31'),
('Summer 2025', '2025-06-01', '2025-08-31'),
('Autumn 2025', '2025-09-01', '2025-11-30'),
('Winter 2025', '2025-12-01', '2026-02-28'),
('Spring 2026', '2026-03-01', '2026-05-31');

-- ===================================
-- 2. РЕЖИМЫ ИГРЫ И КАРТЫ (6 и 12 записей)
-- ===================================
INSERT INTO GameMode (code, name, players_per_team, teams_count) VALUES
('GG', 'Gem Grab', 3, 2),
('BO', 'Bounty', 3, 2),
('SD', 'Showdown', 1, 10),
('HE', 'Heist', 3, 2),
('BB', 'Brawl Ball', 3, 2),
('KN', 'Knockout', 3, 2);

INSERT INTO Map (map_id, name, region) VALUES
(1, 'Twilight Valley', 'Europe'), (2, 'Frozen Peak', 'Asia'),
(3, 'Bright City', 'North America'), (4, 'Golden Savannah', 'Africa'),
(5, 'Deep Dive', 'Europe'), (6, 'Cross Roads', 'Asia'),
(7, 'Open Field', 'North America'), (8, 'Snake Prairie', 'Africa'),
(9, 'Volcanic Pit', 'Europe'), (10, 'Ruined City', 'Asia'),
(11, 'Dune Drifter', 'Africa'), (12, 'Cactus Canyon', 'North America');

-- ===================================
-- 3. КЛУБЫ (12 записей)
-- ===================================
INSERT INTO Club (club_id, name, tag, region) VALUES
(1, 'Shadow Hawks', 'SH888', 'Europe'),
(2, 'Arctic Bears', 'AB111', 'North America'),
(3, 'Tiger Spirits', 'TS333', 'Asia'),
(4, 'Savannah Kings', 'SK999', 'Africa'),
(5, 'Phoenix Flames', 'PF777', 'Europe'),
(6, 'Viking Fury', 'VF222', 'North America'),
(7, 'Samurai Blade', 'SB555', 'Asia'),
(8, 'Nile Crocs', 'NC444', 'Africa'),
(9, 'Oceanic Waves', 'OW666', 'Oceania'),
(10, 'Latin Legends', 'LL345', 'South America'),
(11, 'Euro Elite', 'EE900', 'Europe'),
(12, 'NA Raptors', 'NR101', 'North America');

-- ===================================
-- 4. БРАВЛЕРЫ (16 записей + 16 специализаций)
-- ===================================
INSERT INTO Brawler (brawler_id, name, rarity, release_date) VALUES
(1, 'Shelly', 'Common', '2019-01-01'), (2, 'Colt', 'Rare', '2019-01-10'),
(3, 'Bull', 'Rare', '2019-01-11'), (4, 'Crow', 'Legendary', '2019-03-05'),
(5, 'Leon', 'Legendary', '2019-04-22'), (6, 'Jessie', 'Rare', '2019-01-20'),
(7, 'Brock', 'Rare', '2019-02-01'), (8, 'El Primo', 'Rare', '2019-01-05'),
(9, 'Poco', 'Super Rare', '2019-05-15'), (10, 'Dynamike', 'Super Rare', '2019-02-15'),
(11, 'Darryl', 'Super Rare', '2019-03-25'), (12, 'Max', 'Mythic', '2019-12-18'),
(13, 'Spike', 'Legendary', '2019-05-10'), (14, 'Nita', 'Trophy Road', '2019-01-01'),
(15, 'Penny', 'Super Rare', '2019-04-01'), (16, 'Mortis', 'Mythic', '2019-01-25');

INSERT INTO MeleeBrawler (brawler_id, damage_range, melee_specific_attr) VALUES
(3, 'Short', 'High HP'), (8, 'Short', 'Jump attack'),
(11, 'Short', 'Auto-roll'), (14, 'Short', 'Bear companion'),
(16, 'Short', 'Dash-hit');

INSERT INTO RangeBrawler (brawler_id, projectile_speed, range_specific_attr) VALUES
(2, 1400, 'Fast reload'), (4, 1600, 'Poison attack'),
(5, 1550, 'Invisibility'), (6, 1200, 'Turret'),
(1, 1000, 'Wide Spread'), (7, 1300, 'Rocket fire'),
(9, 900, 'Healing wave'), (10, 800, 'Explosive throw'),
(12, 1450, 'Speed boost'), (13, 1100, 'Spiky projectile'),
(15, 1050, 'Mortar');

-- ===================================
-- 5. ИГРОКИ (30 записей)
-- ===================================
INSERT INTO Player (player_id, username, display_name, country, level, trophies, created_at, last_login) VALUES
(1, 'shadowfox', 'Anna Ivanova', 'Russia', 16, 3800, '2025-02-14', '2026-04-20'),
(2, 'jacobbrown', 'Jacob Brown', 'USA', 22, 7100, '2025-02-17', '2026-04-20'),
(3, 'hiroshi', 'Hiroshi Takeda', 'Japan', 17, 6400, '2025-02-20', '2026-04-20'),
(4, 'sofiagarcia', 'Sofia Garcia', 'Spain', 26, 9820, '2024-12-10', '2026-04-20'),
(5, 'teboho', 'Teboho Ndlovu', 'South Africa', 18, 5100, '2025-01-22', '2026-04-20'),
(6, 'sophieleblanc', 'Sophie Leblanc', 'France', 19, 5800, '2025-03-25', '2026-04-20'),
(7, 'alex_main', 'Alexei Popov', 'Russia', 30, 12500, '2024-11-01', '2026-04-20'),
(8, 'gamergal', 'Chloe Smith', 'Canada', 28, 11000, '2024-12-15', '2026-04-20'),
(9, 'firelord', 'Kenji Sato', 'Japan', 25, 9500, '2025-01-05', '2026-04-20'),
(10, 'desertstar', 'Malik Benali', 'Egypt', 21, 8000, '2025-02-10', '2026-04-20'),
(11, 'icewraith', 'Elias K.', 'Sweden', 24, 8800, '2025-01-29', '2026-04-20'),
(12, 'thunderclap', 'Ramon L.', 'Mexico', 29, 10500, '2024-11-20', '2026-04-20'),
(13, 'mistyqueen', 'Maria S.', 'Germany', 20, 7500, '2025-03-01', '2026-04-20'),
(14, 'phantom', 'Luca Rossi', 'Italy', 23, 8900, '2025-02-05', '2026-04-20'),
(15, 'turbo_max', 'Dmitriy V.', 'Russia', 35, 15000, '2024-10-01', '2026-04-20'),
(16, 'support_pro', 'Anya K.', 'Ukraine', 15, 4500, '2025-04-10', '2026-04-20'),
(17, 'killer_instinct', 'Chen L.', 'China', 32, 13500, '2024-11-15', '2026-04-20'),
(18, 'brawl_beast', 'Sam G.', 'UK', 27, 9900, '2025-01-18', '2026-04-20'),
(19, 'master_mind', 'Jin K.', 'South Korea', 31, 14000, '2024-10-25', '2026-04-20'),
(20, 'oz_champ', 'Liam OConnell', 'Australia', 25, 9200, '2025-03-10', '2026-04-20'),
(21, 'brasilia', 'Pedro Alves', 'Brazil', 28, 11500, '2024-12-01', '2026-04-20'),
(22, 'argentino', 'Mateo Cruz', 'Argentina', 26, 10200, '2025-01-15', '2026-04-20'),
(23, 'dane_king', 'Erik Jensen', 'Denmark', 33, 13000, '2024-11-05', '2026-04-20'),
(24, 'ireland_ace', 'Fiona Kelly', 'Ireland', 24, 8500, '2025-02-28', '2026-04-20'),
(25, 'cali_kid', 'Tony Chen', 'USA', 30, 12000, '2024-10-10', '2026-04-20'),
(26, 'mtl_pro', 'Marc Dubois', 'Canada', 27, 10800, '2025-01-01', '2026-04-20'),
(27, 'thai_force', 'Priya S.', 'Thailand', 23, 7900, '2025-03-05', '2026-04-20'),
(28, 'pol_star', 'Kacper W.', 'Poland', 20, 6800, '2025-04-01', '2026-04-20'),
(29, 'egyptian', 'Amira A.', 'Egypt', 21, 7400, '2025-02-25', '2026-04-20'),
(30, 'finn_sniper', 'Mikko L.', 'Finland', 29, 11800, '2024-11-10', '2026-04-20');

-- ===================================
-- 6. ЧЛЕНСТВО В КЛУБАХ (30 записей)
-- ===================================
INSERT INTO ClubMembership (club_id, player_id, role, joined_at) VALUES
(1, 1, 'captain', '2025-01-05'), (2, 2, 'member', '2025-02-12'), (3, 3, 'member', '2025-04-03'),
(1, 4, 'vice', '2025-02-01'), (4, 5, 'member', '2025-04-05'), (2, 6, 'member', '2025-03-28'),
(5, 7, 'president', '2024-11-01'), (6, 8, 'captain', '2024-12-15'), (7, 9, 'president', '2025-01-05'),
(8, 10, 'captain', '2025-02-10'), (5, 11, 'member', '2025-02-01'), (6, 12, 'member', '2024-11-20'),
(7, 13, 'member', '2025-03-01'), (8, 14, 'member', '2025-02-15'), (1, 15, 'vice', '2024-10-05'),
(2, 16, 'member', '2025-04-10'), (3, 17, 'vice', '2024-11-15'), (4, 18, 'member', '2025-01-18'),
(5, 19, 'vice', '2024-10-25'), (9, 20, 'president', '2025-03-10'), (10, 21, 'captain', '2024-12-01'),
(10, 22, 'member', '2025-01-15'), (11, 23, 'president', '2024-11-05'), (11, 24, 'member', '2025-02-28'),
(12, 25, 'president', '2024-10-10'), (12, 26, 'member', '2025-01-01'), (3, 27, 'member', '2025-03-05'),
(1, 28, 'member', '2025-04-01'), (8, 29, 'member', '2025-02-25'), (5, 30, 'member', '2024-11-10');

-- ===================================
-- 7. ИГРОКИ - БРАВЛЕРЫ (90 записей)
-- 1 = unlocked
-- ===================================
INSERT INTO PlayerBrawler (player_id, brawler_id, level, unlocked) VALUES
(1, 1, 7, 1), (1, 2, 4, 1), (1, 6, 3, 1), (1, 9, 8, 1), (1, 12, 6, 1),
(2, 2, 5, 1), (2, 5, 2, 1), (2, 7, 9, 1), (2, 10, 5, 1), (2, 15, 7, 1),
(3, 3, 8, 1), (3, 1, 8, 1), (3, 4, 10, 1), (3, 13, 9, 1), (3, 16, 7, 1),
(4, 4, 10, 1), (4, 5, 10, 1), (4, 11, 8, 1), (4, 12, 11, 1), (4, 1, 9, 1),
(5, 3, 6, 1), (5, 8, 7, 1), (5, 14, 8, 1), (5, 1, 5, 1), (5, 6, 4, 1),
(6, 6, 4, 1), (6, 15, 6, 1), (6, 7, 5, 1), (6, 2, 3, 1), (6, 9, 2, 1),
(7, 1, 11, 1), (7, 3, 10, 1), (7, 8, 9, 1), (7, 14, 8, 1), (7, 11, 7, 1),
(8, 2, 11, 1), (8, 6, 10, 1), (8, 7, 9, 1), (8, 15, 8, 1), (8, 12, 7, 1),
(9, 4, 11, 1), (9, 5, 10, 1), (9, 13, 9, 1), (9, 16, 8, 1), (9, 10, 7, 1),
(10, 3, 10, 1), (10, 8, 9, 1), (10, 14, 8, 1), (10, 11, 7, 1), (10, 1, 6, 1),
(11, 12, 11, 1), (11, 2, 10, 1), (11, 7, 9, 1), (11, 15, 8, 1), (11, 4, 7, 1),
(12, 16, 11, 1), (12, 5, 10, 1), (12, 4, 9, 1), (12, 13, 8, 1), (12, 8, 7, 1),
(13, 9, 10, 1), (13, 10, 9, 1), (13, 6, 8, 1), (13, 1, 7, 1), (13, 2, 6, 1),
(14, 11, 10, 1), (14, 14, 9, 1), (14, 3, 8, 1), (14, 8, 7, 1), (14, 16, 6, 1),
(15, 5, 11, 1), (15, 4, 11, 1), (15, 12, 11, 1), (15, 13, 10, 1), (15, 16, 10, 1),
(23, 1, 11, 1), (23, 12, 11, 1), (23, 5, 10, 1), (23, 16, 10, 1), (23, 13, 10, 1),
(25, 2, 11, 1), (25, 7, 11, 1), (25, 15, 10, 1), (25, 10, 10, 1), (25, 9, 9, 1),
(21, 8, 11, 1), (21, 3, 11, 1), (21, 14, 10, 1), (21, 11, 10, 1), (21, 1, 9, 1),
(28, 1, 8, 1), (28, 2, 7, 1), (28, 3, 6, 1), (28, 6, 5, 1), (28, 7, 4, 1);

-- ===================================
-- 8. ТУРНИРЫ (10 записей)
-- ===================================
INSERT INTO Tournament (tournament_id, name, season_id, owner_id, created_at, region, finished_at) VALUES
(1, 'Spring Arena', 1, 1, '2025-03-08', 'Europe', '2025-03-20'),
(2, 'Summer Masters', 2, 3, '2025-06-02', 'Asia', '2025-06-25'),
(3, 'Autumn Cup', 3, 5, '2025-09-10', 'Europe', '2025-09-30'),
(4, 'Winter Clash', 4, 7, '2025-12-05', 'Asia', '2025-12-28'),
(5, 'NA Qualifiers', 1, 6, '2025-04-01', 'North America', '2025-04-30'),
(6, 'Africa Grand', 2, 8, '2025-07-01', 'Africa', '2025-07-30'),
(7, 'Global Finals 2025', 4, 1, '2026-01-10', 'Global', '2026-02-10'),
(8, 'Spring Elite 2026', 5, 11, '2026-03-15', 'Europe', '2026-04-15'),
(9, 'South America Showdown', 3, 10, '2025-10-01', 'South America', '2025-10-25'),
(10, 'Oceania Open', 5, 9, '2026-04-01', 'Oceania', '2026-04-20');

-- ===================================
-- 9. СВЯЗЬ КЛУБОВ И ТУРНИРОВ (20 записей)
-- ===================================
INSERT INTO ClubTournament (club_id, tournament_id, result, points) VALUES
(1, 1, 'champion', 180),   (2, 1, 'runner-up', 160),
(3, 2, 'champion', 185),   (4, 2, 'semifinalist', 130),
(5, 3, 'champion', 170),   (1, 3, 'runner-up', 150),
(6, 5, 'champion', 190),   (2, 5, 'runner-up', 165),
(8, 6, 'champion', 175),   (4, 6, 'runner-up', 140),
(7, 4, 'semifinalist', 135), (3, 4, 'champion', 185),
(7, 7, 'semifinalist', 145), (12, 7, 'runner-up', 170),
(1, 7, 'champion', 200), (10, 7, 'semifinalist', 130),
(11, 8, 'champion', 195),  (5, 8, 'runner-up', 160),
(10, 9, 'champion', 180), (20, 9, 'runner-up', 160);

-- ===================================
-- 10. МАТЧИ (80 записей)
-- ===================================
INSERT INTO Match (match_id, tournament_id, mode_id, map_id, start_time, finish_time) VALUES
(1, 1, 1, 1, '2025-03-12 16:00:00', '2025-03-12 16:20:00'),
(2, 1, 2, 5, '2025-03-13 17:10:00', '2025-03-13 17:30:00'),
(3, 1, 5, 9, '2025-03-14 18:00:00', '2025-03-14 18:20:00'),
(4, 1, 6, 1, '2025-03-15 19:00:00', '2025-03-15 19:25:00'),
(5, 1, 3, 5, '2025-03-16 10:00:00', '2025-03-16 10:15:00'),
(6, 2, 3, 2, '2025-06-11 14:00:00', '2025-06-11 14:30:00'),
(7, 2, 4, 6, '2025-06-12 16:40:00', '2025-06-12 17:05:00'),
(8, 2, 1, 10, '2025-06-13 15:00:00', '2025-06-13 15:20:00'),
(9, 2, 5, 2, '2025-06-14 16:00:00', '2025-06-14 16:20:00'),
(10, 2, 2, 6, '2025-06-15 17:00:00', '2025-06-15 17:20:00'),
(11, 3, 5, 5, '2025-09-15 10:00:00', '2025-09-15 10:25:00'),
(12, 3, 1, 1, '2025-09-15 11:00:00', '2025-09-15 11:20:00'),
(13, 3, 2, 9, '2025-09-16 14:00:00', '2025-09-16 14:20:00'),
(14, 3, 6, 5, '2025-09-17 14:00:00', '2025-09-17 14:20:00'),
(15, 3, 3, 1, '2025-09-18 10:00:00', '2025-09-18 10:15:00'),
(16, 4, 6, 6, '2025-12-10 18:00:00', '2025-12-10 18:25:00'),
(17, 4, 4, 10, '2025-12-11 10:30:00', '2025-12-11 11:00:00'),
(18, 4, 5, 2, '2025-12-12 16:00:00', '2025-12-12 16:20:00'),
(19, 4, 1, 6, '2025-12-13 17:00:00', '2025-12-13 17:20:00'),
(20, 4, 3, 10, '2025-12-14 10:00:00', '2025-12-14 10:15:00'),
(21, 5, 1, 3, '2025-04-05 15:00:00', '2025-04-05 15:20:00'),
(22, 5, 5, 7, '2025-04-05 16:00:00', '2025-04-05 16:20:00'),
(23, 5, 4, 12, '2025-04-07 14:00:00', '2025-04-07 14:25:00'),
(24, 5, 2, 3, '2025-04-08 18:00:00', '2025-04-08 18:20:00'),
(25, 5, 3, 7, '2025-04-09 10:00:00', '2025-04-09 10:15:00'),
(26, 6, 6, 4, '2025-07-05 17:00:00', '2025-07-05 17:25:00'),
(27, 6, 2, 8, '2025-07-06 13:00:00', '2025-07-06 13:20:00'),
(28, 6, 4, 11, '2025-07-07 19:00:00', '2025-07-07 19:25:00'),
(29, 6, 1, 4, '2025-07-08 16:00:00', '2025-07-08 16:20:00'),
(30, 6, 3, 8, '2025-07-09 10:00:00', '2025-07-09 10:15:00'),
(31, 7, 1, 9, '2026-01-15 18:00:00', '2026-01-15 18:20:00'),
(32, 7, 5, 3, '2026-01-16 19:00:00', '2026-01-16 19:20:00'),
(33, 7, 4, 10, '2026-01-17 20:00:00', '2026-01-17 20:25:00'),
(34, 7, 6, 5, '2026-01-18 21:00:00', '2026-01-18 21:25:00'),
(35, 7, 2, 1, '2026-01-19 22:00:00', '2026-01-19 22:20:00'),
(36, 8, 1, 5, '2026-03-20 15:00:00', '2026-03-20 15:20:00'),
(37, 8, 2, 9, '2026-03-21 16:00:00', '2026-03-21 16:20:00'),
(38, 8, 5, 1, '2026-03-22 17:00:00', '2026-03-22 17:20:00'),
(39, 8, 6, 5, '2026-03-23 18:00:00', '2026-03-23 18:25:00'),
(40, 8, 3, 9, '2026-03-24 10:00:00', '2026-03-24 10:15:00'),
(41, 9, 1, 11, '2025-10-05 15:00:00', '2025-10-05 15:20:00'),
(42, 9, 5, 8, '2025-10-05 16:00:00', '2025-10-05 16:20:00'),
(43, 9, 4, 3, '2025-10-07 14:00:00', '2025-10-07 14:25:00'),
(44, 9, 2, 11, '2025-10-08 18:00:00', '2025-10-08 18:20:00'),
(45, 9, 3, 8, '2025-10-09 10:00:00', '2025-10-09 10:15:00'),
(46, 10, 6, 12, '2026-04-05 17:00:00', '2026-04-05 17:25:00'),
(47, 10, 2, 4, '2026-04-06 13:00:00', '2026-04-06 13:20:00'),
(48, 10, 4, 7, '2026-04-07 19:00:00', '2026-04-07 19:25:00'),
(49, 10, 1, 12, '2026-04-08 16:00:00', '2026-04-08 16:20:00'),
(50, 10, 3, 4, '2026-04-09 10:00:00', '2026-04-09 10:15:00'),
(51, 1, 1, 1, '2025-03-18 12:00:00', '2025-03-18 12:20:00'),
(52, 2, 2, 6, '2025-06-20 14:00:00', '2025-06-20 14:20:00'),
(53, 3, 4, 5, '2025-09-22 16:00:00', '2025-09-22 16:25:00'),
(54, 4, 5, 10, '2025-12-25 18:00:00', '2025-12-25 18:20:00'),
(55, 5, 6, 3, '2025-04-29 19:00:00', '2025-04-29 19:25:00'),
(56, 6, 3, 4, '2025-07-30 10:00:00', '2025-07-30 10:15:00'),
(57, 7, 1, 9, '2026-02-01 11:00:00', '2026-02-01 11:20:00'),
(58, 8, 2, 5, '2026-04-05 13:00:00', '2026-04-05 13:20:00'),
(59, 8, 4, 1, '2026-04-06 14:00:00', '2026-04-06 14:25:00'),
(60, 7, 5, 9, '2026-02-02 15:00:00', '2026-02-02 15:20:00'),
(61, 1, 1, 9, '2025-03-19 13:00:00', '2025-03-19 13:20:00'),
(62, 2, 2, 2, '2025-06-21 15:00:00', '2025-06-21 15:20:00'),
(63, 3, 4, 1, '2025-09-23 17:00:00', '2025-09-23 17:25:00'),
(64, 4, 5, 6, '2025-12-26 19:00:00', '2025-12-26 19:20:00'),
(65, 5, 6, 7, '2025-04-30 20:00:00', '2025-04-30 20:25:00'),
(66, 6, 3, 8, '2025-07-31 11:00:00', '2025-07-31 11:15:00'),
(67, 7, 1, 3, '2026-02-03 12:00:00', '2026-02-03 12:20:00'),
(68, 8, 2, 9, '2026-04-07 14:00:00', '2026-04-07 14:20:00'),
(69, 8, 4, 5, '2026-04-08 15:00:00', '2026-04-08 15:25:00'),
(70, 7, 5, 1, '2026-02-04 16:00:00', '2026-02-04 16:20:00'),
(71, 9, 1, 12, '2025-10-10 17:00:00', '2025-10-10 17:20:00'),
(72, 9, 5, 4, '2025-10-11 18:00:00', '2025-10-11 18:20:00'),
(73, 10, 6, 3, '2026-04-10 19:00:00', '2026-04-10 19:25:00'),
(74, 10, 2, 7, '2026-04-11 20:00:00', '2026-04-11 20:20:00'),
(75, 10, 4, 12, '2026-04-12 21:00:00', '2026-04-12 21:25:00'),
(76, 1, 1, 5, '2025-03-20 14:00:00', '2025-03-20 14:20:00'),
(77, 2, 2, 10, '2025-06-22 16:00:00', '2025-06-22 16:20:00'),
(78, 3, 4, 9, '2025-09-24 18:00:00', '2025-09-24 18:25:00'),
(79, 4, 5, 2, '2025-12-27 20:00:00', '2025-12-27 20:20:00'),
(80, 5, 6, 12, '2025-04-30 21:00:00', '2025-04-30 21:25:00');

-- ===================================
-- 11. УЧАСТНИКИ МАТЧЕЙ (480 записей)
-- ===================================
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (1, 1, 1, 'SH888', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (1, 4, 3, 'SH888', 3, 2500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (1, 15, 12, 'SH888', 5, 4000, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (1, 2, 2, 'AB111', 5, 3700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (1, 6, 6, 'AB111', 2, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (1, 16, 7, 'AB111', 4, 3200, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (2, 4, 4, 'SH888', 4, 3900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (2, 1, 15, 'SH888', 3, 2800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (2, 28, 6, 'SH888', 2, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (2, 23, 1, 'EE900', 8, 5100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (2, 24, 12, 'EE900', 6, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (2, 11, 4, 'EE900', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (3, 7, 1, 'PF777', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (3, 11, 12, 'PF777', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (3, 19, 7, 'PF777', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (3, 15, 16, 'SH888', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (3, 4, 5, 'SH888', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (3, 28, 2, 'SH888', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (4, 23, 5, 'EE900', 9, 5500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (4, 24, 13, 'EE900', 7, 4700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (4, 11, 2, 'EE900', 6, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (4, 7, 3, 'PF777', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (4, 30, 12, 'PF777', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (4, 19, 1, 'PF777', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (5, 4, 12, 'Solo', 8, 5200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (5, 15, 5, 'Solo', 5, 4000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (5, 23, 4, 'Solo', 4, 3500, 3, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (5, 7, 1, 'Solo', 3, 2500, 4, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (5, 2, 7, 'Solo', 2, 1800, 5, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (5, 28, 3, 'Solo', 1, 1200, 6, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (5, 11, 15, 'Solo', 0, 800, 7, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (5, 24, 13, 'Solo', 0, 700, 8, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (5, 1, 9, 'Solo', 0, 600, 9, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (5, 19, 11, 'Solo', 0, 500, 10, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (6, 9, 4, 'Solo', 7, 4800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (6, 17, 11, 'Solo', 5, 3900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (6, 3, 16, 'Solo', 4, 3100, 3, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (6, 27, 1, 'Solo', 3, 2500, 4, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (6, 5, 8, 'Solo', 2, 1800, 5, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (6, 10, 14, 'Solo', 1, 1200, 6, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (6, 20, 15, 'Solo', 0, 800, 7, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (6, 21, 3, 'Solo', 0, 700, 8, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (6, 22, 11, 'Solo', 0, 600, 9, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (6, 13, 9, 'Solo', 0, 500, 10, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (7, 3, 13, 'TS333', 7, 3950, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (7, 17, 11, 'TS333', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (7, 27, 4, 'TS333', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (7, 9, 5, 'SB555', 5, 3800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (7, 13, 6, 'SB555', 4, 3100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (7, 14, 16, 'SB555', 3, 2500, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (8, 3, 4, 'TS333', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (8, 17, 10, 'TS333', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (8, 27, 13, 'TS333', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (8, 5, 3, 'SK999', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (8, 10, 14, 'SK999', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (8, 18, 1, 'SK999', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (9, 10, 1, 'NC444', 7, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (9, 14, 16, 'NC444', 6, 3900, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (9, 29, 3, 'NC444', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (9, 5, 5, 'SK999', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (9, 18, 8, 'SK999', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (9, 10, 14, 'SK999', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (10, 10, 11, 'NC444', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (10, 14, 14, 'NC444', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (10, 29, 1, 'NC444', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (10, 3, 1, 'TS333', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (10, 17, 13, 'TS333', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (10, 27, 10, 'TS333', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (11, 7, 11, 'PF777', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (11, 11, 12, 'PF777', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (11, 19, 7, 'PF777', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (11, 23, 8, 'EE900', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (11, 24, 15, 'EE900', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (11, 30, 4, 'EE900', 2, 1800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (12, 15, 5, 'SH888', 7, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (12, 4, 4, 'SH888', 6, 3900, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (12, 1, 12, 'SH888', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (12, 23, 3, 'EE900', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (12, 24, 2, 'EE900', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (12, 30, 1, 'EE900', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (13, 7, 1, 'PF777', 8, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (13, 11, 4, 'PF777', 6, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (13, 19, 12, 'PF777', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (13, 1, 3, 'SH888', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (13, 4, 1, 'SH888', 3, 2600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (13, 15, 4, 'SH888', 2, 1900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (14, 7, 11, 'PF777', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (14, 11, 12, 'PF777', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (14, 19, 7, 'PF777', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (14, 1, 1, 'SH888', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (14, 4, 3, 'SH888', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (14, 15, 4, 'SH888', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (15, 7, 8, 'Solo', 6, 4200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (15, 11, 7, 'Solo', 5, 3500, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (15, 19, 11, 'Solo', 4, 2800, 3, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (15, 1, 5, 'Solo', 3, 2200, 4, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (15, 4, 4, 'Solo', 2, 1800, 5, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (15, 15, 12, 'Solo', 1, 1400, 6, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (15, 8, 6, 'Solo', 0, 1000, 7, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (15, 12, 16, 'Solo', 0, 800, 8, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (15, 23, 1, 'Solo', 0, 700, 9, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (15, 24, 2, 'Solo', 0, 600, 10, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (16, 9, 4, 'SB555', 8, 5100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (16, 17, 11, 'SB555', 6, 4200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (16, 13, 9, 'SB555', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (16, 3, 16, 'TS333', 4, 3800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (16, 27, 13, 'TS333', 3, 3100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (16, 10, 1, 'TS333', 2, 2500, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (17, 3, 1, 'TS333', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (17, 17, 10, 'TS333', 6, 3900, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (17, 27, 4, 'TS333', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (17, 9, 5, 'SB555', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (17, 13, 6, 'SB555', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (17, 14, 16, 'SB555', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (18, 10, 1, 'NC444', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (18, 14, 16, 'NC444', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (18, 29, 3, 'NC444', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (18, 5, 5, 'SK999', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (18, 18, 8, 'SK999', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (18, 10, 14, 'SK999', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (19, 9, 4, 'SB555', 7, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (19, 17, 11, 'SB555', 6, 3900, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (19, 13, 9, 'SB555', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (19, 3, 1, 'TS333', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (19, 10, 14, 'TS333', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (19, 27, 10, 'TS333', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (20, 10, 11, 'Solo', 8, 4800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (20, 14, 14, 'Solo', 7, 4100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (20, 29, 1, 'Solo', 6, 3500, 3, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (20, 3, 13, 'Solo', 5, 2900, 4, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (20, 17, 3, 'Solo', 4, 2400, 5, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (20, 27, 10, 'Solo', 3, 1900, 6, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (20, 9, 5, 'Solo', 2, 1400, 7, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (20, 13, 6, 'Solo', 1, 900, 8, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (20, 15, 12, 'Solo', 0, 500, 9, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (20, 4, 4, 'Solo', 0, 400, 10, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (21, 8, 12, 'VF222', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (21, 12, 13, 'VF222', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (21, 6, 2, 'VF222', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (21, 2, 7, 'AB111', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (21, 16, 14, 'AB111', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (21, 26, 15, 'AB111', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (22, 8, 6, 'VF222', 7, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (22, 12, 5, 'VF222', 6, 3900, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (22, 25, 9, 'VF222', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (22, 2, 15, 'AB111', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (22, 16, 7, 'AB111', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (22, 26, 10, 'AB111', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (23, 25, 2, 'NR101', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (23, 26, 7, 'NR101', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (23, 8, 15, 'NR101', 5, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (23, 2, 10, 'AB111', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (23, 6, 7, 'AB111', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (23, 16, 14, 'AB111', 2, 1800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (24, 25, 1, 'NR101', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (24, 26, 12, 'NR101', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (24, 8, 7, 'NR101', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (24, 12, 16, 'VF222', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (24, 6, 9, 'VF222', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (24, 2, 5, 'VF222', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (25, 25, 2, 'Solo', 8, 4800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (25, 8, 7, 'Solo', 7, 4100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (25, 12, 5, 'Solo', 6, 3500, 3, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (25, 2, 7, 'Solo', 5, 2900, 4, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (25, 16, 1, 'Solo', 4, 2400, 5, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (25, 6, 4, 'Solo', 3, 1900, 6, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (25, 26, 8, 'Solo', 2, 1400, 7, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (25, 11, 2, 'Solo', 1, 900, 8, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (25, 15, 12, 'Solo', 0, 500, 9, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (25, 1, 3, 'Solo', 0, 400, 10, 0);
-- Дополнительные матчи с 26 по 80
-- Матчи 26-30 (Африка, 3v3)
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (26, 10, 11, 'NC444', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (26, 14, 14, 'NC444', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (26, 29, 1, 'NC444', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (26, 5, 3, 'SK999', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (26, 18, 8, 'SK999', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (26, 22, 11, 'SK999', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (27, 10, 1, 'NC444', 7, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (27, 14, 16, 'NC444', 6, 3900, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (27, 29, 3, 'NC444', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (27, 5, 5, 'SK999', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (27, 18, 8, 'SK999', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (27, 22, 14, 'SK999', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (28, 10, 11, 'NC444', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (28, 14, 14, 'NC444', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (28, 29, 1, 'NC444', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (28, 5, 3, 'SK999', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (28, 18, 8, 'SK999', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (28, 22, 11, 'SK999', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (29, 10, 1, 'NC444', 7, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (29, 14, 16, 'NC444', 6, 3900, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (29, 29, 3, 'NC444', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (29, 5, 5, 'SK999', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (29, 18, 8, 'SK999', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (29, 22, 14, 'SK999', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (30, 10, 11, 'Solo', 8, 4800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (30, 14, 14, 'Solo', 7, 4100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (30, 29, 1, 'Solo', 6, 3500, 3, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (30, 5, 3, 'Solo', 5, 2900, 4, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (30, 18, 8, 'Solo', 4, 2400, 5, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (30, 22, 11, 'Solo', 3, 1900, 6, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (30, 1, 12, 'Solo', 2, 1400, 7, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (30, 4, 5, 'Solo', 1, 900, 8, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (30, 15, 4, 'Solo', 0, 500, 9, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (30, 28, 1, 'Solo', 0, 400, 10, 0);

-- Глобальные Финалы (Матчи 31-35)
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (31, 15, 4, 'SH888', 8, 5000, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (31, 4, 12, 'SH888', 7, 4200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (31, 1, 5, 'SH888', 6, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (31, 25, 2, 'NR101', 5, 3800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (31, 26, 7, 'NR101', 4, 3100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (31, 8, 15, 'NR101', 3, 2500, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (32, 17, 11, 'TS333', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (32, 3, 16, 'TS333', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (32, 27, 4, 'TS333', 5, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (32, 21, 8, 'LL345', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (32, 22, 3, 'LL345', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (32, 10, 14, 'LL345', 2, 1800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (33, 25, 7, 'NR101', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (33, 26, 10, 'NR101', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (33, 8, 9, 'NR101', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (33, 17, 3, 'TS333', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (33, 3, 13, 'TS333', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (33, 27, 1, 'TS333', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (34, 15, 12, 'SH888', 9, 5200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (34, 4, 5, 'SH888', 7, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (34, 28, 7, 'SH888', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (34, 25, 1, 'NR101', 5, 3500, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (34, 26, 2, 'NR101', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (34, 8, 12, 'NR101', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (35, 25, 2, 'NR101', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (35, 26, 12, 'NR101', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (35, 8, 7, 'NR101', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (35, 15, 1, 'SH888', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (35, 4, 4, 'SH888', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (35, 28, 3, 'SH888', 2, 2000, 2, 0);

-- Весенняя элита (Матчи 36-40)
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (36, 23, 1, 'EE900', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (36, 24, 12, 'EE900', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (36, 30, 5, 'EE900', 5, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (36, 7, 3, 'PF777', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (36, 11, 4, 'PF777', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (36, 19, 15, 'PF777', 2, 1800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (37, 7, 11, 'PF777', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (37, 11, 12, 'PF777', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (37, 19, 7, 'PF777', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (37, 23, 8, 'EE900', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (37, 24, 15, 'EE900', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (37, 30, 4, 'EE900', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (38, 23, 5, 'EE900', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (38, 24, 13, 'EE900', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (38, 30, 2, 'EE900', 5, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (38, 7, 3, 'PF777', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (38, 11, 4, 'PF777', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (38, 19, 15, 'PF777', 2, 1800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (39, 23, 11, 'EE900', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (39, 24, 12, 'EE900', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (39, 30, 7, 'EE900', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (39, 7, 1, 'PF777', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (39, 11, 3, 'PF777', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (39, 19, 4, 'PF777', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (40, 23, 1, 'Solo', 9, 5000, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (40, 30, 5, 'Solo', 7, 4200, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (40, 24, 12, 'Solo', 6, 3500, 3, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (40, 7, 3, 'Solo', 5, 3000, 4, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (40, 11, 4, 'Solo', 4, 2500, 5, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (40, 19, 15, 'Solo', 3, 2000, 6, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (40, 1, 2, 'Solo', 2, 1500, 7, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (40, 4, 5, 'Solo', 1, 1000, 8, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (40, 15, 12, 'Solo', 0, 500, 9, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (40, 28, 6, 'Solo', 0, 400, 10, 0);

-- Южная Америка (Матчи 41-45)
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (41, 21, 8, 'LL345', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (41, 22, 3, 'LL345', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (41, 13, 9, 'LL345', 5, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (41, 12, 16, 'VF222', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (41, 6, 9, 'VF222', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (41, 25, 5, 'VF222', 2, 1800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (42, 21, 5, 'LL345', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (42, 22, 11, 'LL345', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (42, 13, 6, 'LL345', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (42, 12, 4, 'VF222', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (42, 6, 7, 'VF222', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (42, 25, 10, 'VF222', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (43, 21, 14, 'LL345', 7, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (43, 22, 1, 'LL345', 6, 3900, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (43, 13, 2, 'LL345', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (43, 12, 16, 'VF222', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (43, 6, 9, 'VF222', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (43, 25, 5, 'VF222', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (44, 21, 8, 'LL345', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (44, 22, 3, 'LL345', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (44, 13, 9, 'LL345', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (44, 12, 16, 'VF222', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (44, 6, 9, 'VF222', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (44, 25, 5, 'VF222', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (45, 21, 8, 'Solo', 8, 4800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (45, 22, 3, 'Solo', 7, 4100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (45, 13, 9, 'Solo', 6, 3500, 3, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (45, 12, 16, 'Solo', 5, 2900, 4, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (45, 6, 9, 'Solo', 4, 2400, 5, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (45, 25, 5, 'Solo', 3, 1900, 6, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (45, 1, 1, 'Solo', 2, 1400, 7, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (45, 4, 4, 'Solo', 1, 900, 8, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (45, 15, 12, 'Solo', 0, 500, 9, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (45, 28, 6, 'Solo', 0, 400, 10, 0);

-- Океания (Матчи 46-50)
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (46, 20, 1, 'OW666', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (46, 2, 12, 'OW666', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (46, 6, 7, 'OW666', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (46, 25, 3, 'NR101', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (46, 26, 4, 'NR101', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (46, 8, 15, 'NR101', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (47, 20, 2, 'OW666', 7, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (47, 2, 5, 'OW666', 6, 3900, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (47, 6, 9, 'OW666', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (47, 25, 7, 'NR101', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (47, 26, 10, 'NR101', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (47, 8, 14, 'NR101', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (48, 20, 4, 'OW666', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (48, 2, 13, 'OW666', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (48, 6, 6, 'OW666', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (48, 25, 1, 'NR101', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (48, 26, 3, 'NR101', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (48, 8, 11, 'NR101', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (49, 20, 1, 'OW666', 7, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (49, 2, 2, 'OW666', 6, 3900, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (49, 6, 7, 'OW666', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (49, 25, 4, 'NR101', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (49, 26, 12, 'NR101', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (49, 8, 15, 'NR101', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (50, 20, 3, 'Solo', 9, 5000, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (50, 2, 11, 'Solo', 7, 4200, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (50, 6, 8, 'Solo', 6, 3500, 3, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (50, 25, 1, 'Solo', 5, 3000, 4, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (50, 26, 2, 'Solo', 4, 2500, 5, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (50, 8, 7, 'Solo', 3, 2000, 6, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (50, 1, 4, 'Solo', 2, 1500, 7, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (50, 4, 5, 'Solo', 1, 1000, 8, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (50, 15, 12, 'Solo', 0, 500, 9, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (50, 28, 6, 'Solo', 0, 400, 10, 0);

-- Продолжение матчей (51-80) - 30 матчей * 6 игроков = 180 строк
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (51, 1, 1, 'TEMA', 6, 4000, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (51, 4, 15, 'TEMA', 4, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (51, 15, 5, 'TEMA', 5, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (51, 2, 7, 'TEMB', 3, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (51, 6, 9, 'TEMB', 2, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (51, 16, 12, 'TEMB', 1, 1500, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (52, 3, 2, 'TEMC', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (52, 17, 10, 'TEMC', 5, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (52, 27, 4, 'TEMC', 6, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (52, 9, 5, 'TEMD', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (52, 13, 13, 'TEMD', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (52, 14, 16, 'TEMD', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (53, 7, 14, 'TEME', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (53, 11, 4, 'TEME', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (53, 19, 12, 'TEME', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (53, 23, 3, 'TEMF', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (53, 24, 2, 'TEMF', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (53, 30, 1, 'TEMF', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (54, 9, 5, 'TEMG', 9, 5500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (54, 17, 11, 'TEMG', 7, 4700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (54, 13, 16, 'TEMG', 6, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (54, 3, 1, 'TEMH', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (54, 10, 14, 'TEMH', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (54, 27, 10, 'TEMH', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (55, 8, 12, 'TEMI', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (55, 12, 13, 'TEMI', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (55, 6, 2, 'TEMI', 5, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (55, 2, 7, 'TEMJ', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (55, 16, 14, 'TEMJ', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (55, 26, 15, 'TEMJ', 2, 1800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (56, 10, 11, 'Solo', 8, 4800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (56, 14, 14, 'Solo', 7, 4100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (56, 29, 1, 'Solo', 6, 3500, 3, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (56, 5, 3, 'Solo', 5, 2900, 4, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (56, 18, 8, 'Solo', 4, 2400, 5, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (56, 22, 11, 'Solo', 3, 1900, 6, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (56, 1, 12, 'Solo', 2, 1400, 7, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (56, 4, 5, 'Solo', 1, 900, 8, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (56, 15, 4, 'Solo', 0, 500, 9, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (56, 28, 1, 'Solo', 0, 400, 10, 0);

INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (57, 15, 4, 'SH888', 8, 5000, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (57, 4, 12, 'SH888', 7, 4200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (57, 1, 5, 'SH888', 6, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (57, 25, 2, 'NR101', 5, 3800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (57, 26, 7, 'NR101', 4, 3100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (57, 8, 15, 'NR101', 3, 2500, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (58, 23, 1, 'EE900', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (58, 24, 12, 'EE900', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (58, 30, 5, 'EE900', 5, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (58, 7, 3, 'PF777', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (58, 11, 4, 'PF777', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (58, 19, 15, 'PF777', 2, 1800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (59, 23, 5, 'EE900', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (59, 24, 13, 'EE900', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (59, 30, 2, 'EE900', 5, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (59, 7, 3, 'PF777', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (59, 11, 4, 'PF777', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (59, 19, 15, 'PF777', 2, 1800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (60, 15, 16, 'SH888', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (60, 4, 5, 'SH888', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (60, 28, 7, 'SH888', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (60, 25, 1, 'NR101', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (60, 26, 2, 'NR101', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (60, 8, 12, 'NR101', 2, 2000, 2, 0);

-- Match 61-80 (20 матчей * 6 игроков = 120 строк)
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (61, 1, 1, 'SH888', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (61, 4, 15, 'SH888', 4, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (61, 15, 5, 'SH888', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (61, 2, 7, 'AB111', 3, 2800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (61, 6, 9, 'AB111', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (61, 16, 12, 'AB111', 1, 1400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (62, 3, 2, 'TS333', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (62, 17, 10, 'TS333', 5, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (62, 27, 4, 'TS333', 6, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (62, 9, 5, 'SB555', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (62, 13, 13, 'SB555', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (62, 14, 16, 'SB555', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (63, 7, 14, 'PF777', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (63, 11, 4, 'PF777', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (63, 19, 12, 'PF777', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (63, 23, 3, 'EE900', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (63, 24, 2, 'EE900', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (63, 30, 1, 'EE900', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (64, 9, 5, 'SB555', 9, 5500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (64, 17, 11, 'SB555', 7, 4700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (64, 13, 16, 'SB555', 6, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (64, 3, 1, 'TS333', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (64, 10, 14, 'TS333', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (64, 27, 10, 'TS333', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (65, 8, 12, 'VF222', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (65, 12, 13, 'VF222', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (65, 6, 2, 'VF222', 5, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (65, 2, 7, 'AB111', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (65, 16, 14, 'AB111', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (65, 26, 15, 'AB111', 2, 1800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (66, 10, 11, 'Solo', 8, 4800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (66, 14, 14, 'Solo', 7, 4100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (66, 29, 1, 'Solo', 6, 3500, 3, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (66, 5, 3, 'Solo', 5, 2900, 4, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (66, 18, 8, 'Solo', 4, 2400, 5, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (66, 22, 11, 'Solo', 3, 1900, 6, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (66, 1, 12, 'Solo', 2, 1400, 7, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (66, 4, 5, 'Solo', 1, 900, 8, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (66, 15, 4, 'Solo', 0, 500, 9, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (66, 28, 1, 'Solo', 0, 400, 10, 0);

INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (67, 15, 4, 'SH888', 8, 5000, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (67, 4, 12, 'SH888', 7, 4200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (67, 1, 5, 'SH888', 6, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (67, 25, 2, 'NR101', 5, 3800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (67, 26, 7, 'NR101', 4, 3100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (67, 8, 15, 'NR101', 3, 2500, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (68, 23, 1, 'EE900', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (68, 24, 12, 'EE900', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (68, 30, 5, 'EE900', 5, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (68, 7, 3, 'PF777', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (68, 11, 4, 'PF777', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (68, 19, 15, 'PF777', 2, 1800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (69, 23, 5, 'EE900', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (69, 24, 13, 'EE900', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (69, 30, 2, 'EE900', 5, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (69, 7, 3, 'PF777', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (69, 11, 4, 'PF777', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (69, 19, 15, 'PF777', 2, 1800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (70, 15, 16, 'SH888', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (70, 4, 5, 'SH888', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (70, 28, 7, 'SH888', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (70, 25, 1, 'NR101', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (70, 26, 2, 'NR101', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (70, 8, 12, 'NR101', 2, 2000, 2, 0);

INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (71, 21, 8, 'LL345', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (71, 22, 3, 'LL345', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (71, 13, 9, 'LL345', 5, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (71, 12, 16, 'VF222', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (71, 6, 9, 'VF222', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (71, 25, 5, 'VF222', 2, 1800, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (72, 21, 5, 'LL345', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (72, 22, 11, 'LL345', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (72, 13, 6, 'LL345', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (72, 12, 4, 'VF222', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (72, 6, 7, 'VF222', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (72, 25, 10, 'VF222', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (73, 20, 1, 'OW666', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (73, 2, 12, 'OW666', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (73, 6, 7, 'OW666', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (73, 25, 3, 'NR101', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (73, 26, 4, 'NR101', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (73, 8, 15, 'NR101', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (74, 20, 2, 'OW666', 7, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (74, 2, 5, 'OW666', 6, 3900, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (74, 6, 9, 'OW666', 5, 3500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (74, 25, 7, 'NR101', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (74, 26, 10, 'NR101', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (74, 8, 14, 'NR101', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (75, 20, 4, 'OW666', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (75, 2, 13, 'OW666', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (75, 6, 6, 'OW666', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (75, 25, 1, 'NR101', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (75, 26, 3, 'NR101', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (75, 8, 11, 'NR101', 2, 2000, 2, 0);

INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (76, 1, 1, 'SH888', 6, 4000, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (76, 4, 15, 'SH888', 4, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (76, 15, 5, 'SH888', 5, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (76, 2, 7, 'AB111', 3, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (76, 6, 9, 'AB111', 2, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (76, 16, 12, 'AB111', 1, 1500, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (77, 3, 2, 'TS333', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (77, 17, 10, 'TS333', 5, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (77, 27, 4, 'TS333', 6, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (77, 9, 5, 'SB555', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (77, 13, 13, 'SB555', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (77, 14, 16, 'SB555', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (78, 7, 14, 'PF777', 8, 4500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (78, 11, 4, 'PF777', 6, 3800, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (78, 19, 12, 'PF777', 5, 3100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (78, 23, 3, 'EE900', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (78, 24, 2, 'EE900', 3, 2700, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (78, 30, 1, 'EE900', 2, 2000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (79, 9, 5, 'SB555', 9, 5500, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (79, 17, 11, 'SB555', 7, 4700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (79, 13, 16, 'SB555', 6, 4100, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (79, 3, 1, 'TS333', 5, 3600, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (79, 10, 14, 'TS333', 4, 2900, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (79, 27, 10, 'TS333', 3, 2100, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (80, 8, 12, 'VF222', 7, 4300, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (80, 12, 13, 'VF222', 6, 3700, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (80, 6, 2, 'VF222', 5, 3200, 1, 1);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (80, 2, 7, 'AB111', 4, 3000, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (80, 16, 14, 'AB111', 3, 2400, 2, 0);
INSERT INTO MatchParticipant (match_id, player_id, brawler_id, team_tag, kills, damage, placement, is_winner) VALUES (80, 26, 15, 'AB111', 2, 1800, 2, 0);

-- ===================================
-- 12. ИСТОРИЯ ТРОФЕЕВ (60 записей)
-- ===================================
INSERT INTO TrophyHistory (player_id, changed_at, delta, total) VALUES
(1, '2025-03-12 16:20:00', 120, 3920), (2, '2025-03-13 17:30:00', 90, 7190),
(3, '2025-06-11 14:30:00', 140, 6540), (4, '2025-03-12 16:20:00', 160, 9980),
(5, '2025-06-12 17:05:00', 65, 5165), (6, '2025-03-13 17:30:00', 75, 5875),
(15, '2025-03-12 16:20:00', 120, 15120), (7, '2025-09-15 10:25:00', 130, 12630),
(11, '2025-09-15 10:25:00', 130, 8930), (19, '2025-09-15 10:25:00', 130, 14130),
(4, '2025-09-15 11:20:00', -80, 9900), (15, '2025-09-15 11:20:00', -80, 15040),
(9, '2025-12-10 18:25:00', 145, 9645), (17, '2025-12-10 18:25:00', 145, 13645),
(13, '2025-12-11 11:00:00', -90, 7410), (14, '2025-12-11 11:00:00', -90, 8810),
(10, '2025-07-05 17:25:00', 135, 8135), (18, '2025-07-05 17:25:00', -75, 9825),
(2, '2025-04-05 15:20:00', 150, 7340), (8, '2025-04-05 15:20:00', 180, 11180),
(23, '2026-03-20 15:20:00', 110, 13110), (24, '2026-03-20 15:20:00', 95, 8595),
(25, '2026-01-15 18:20:00', 180, 12180), (26, '2026-01-15 18:20:00', 150, 10950),
(28, '2025-03-12 16:20:00', 40, 6840), (21, '2025-10-05 15:20:00', 120, 11620),
(22, '2025-10-05 16:20:00', 90, 10290), (20, '2026-04-05 17:25:00', 140, 9340),
(1, '2025-03-19 13:20:00', 110, 4030), (15, '2025-03-19 13:20:00', 130, 15170),
(4, '2025-03-19 13:20:00', 90, 9990), (2, '2025-06-21 15:20:00', 100, 7440),
(6, '2025-06-21 15:20:00', -50, 5825), (7, '2025-09-23 17:25:00', 140, 12770),
(11, '2025-09-23 17:25:00', 110, 9040), (19, '2025-09-23 17:25:00', 90, 14220),
(23, '2025-09-23 17:25:00', -70, 13040), (24, '2025-09-23 17:25:00', -50, 8545),
(25, '2026-01-16 19:20:00', 150, 12330), (26, '2026-01-16 19:20:00', 120, 11070),
(8, '2026-01-16 19:20:00', 100, 11280), (1, '2026-02-01 11:20:00', 130, 4160),
(4, '2026-02-01 11:20:00', 100, 10090), (15, '2026-02-01 11:20:00', 80, 15250),
(25, '2026-02-01 11:20:00', -70, 12260), (26, '2026-02-01 11:20:00', -50, 11020),
(8, '2026-02-01 11:20:00', -30, 11250), (23, '2026-03-21 16:20:00', 120, 13230),
(24, '2026-03-21 16:20:00', 90, 8685), (30, '2026-03-21 16:20:00', 70, 11870),
(7, '2026-03-21 16:20:00', -80, 12690), (11, '2026-03-21 16:20:00', -60, 8980),
(19, '2026-03-21 16:20:00', -40, 14180), (20, '2026-04-06 13:20:00', 110, 9450),
(2, '2026-04-06 13:20:00', 95, 7535), (6, '2026-04-06 13:20:00', 70, 5895),
(25, '2026-04-06 13:20:00', -60, 12200), (26, '2026-04-06 13:20:00', -40, 10980),
(8, '2026-04-06 13:20:00', -20, 11230), (21, '2025-10-08 18:20:00', 150, 11770),
(22, '2025-10-08 18:20:00', 130, 10420), (13, '2025-10-08 18:20:00', 110, 7520),
(12, '2025-10-08 18:20:00', -90, 10410), (6, '2025-10-08 18:20:00', -70, 5825);

-- ===================================
-- 13. ПОКУПКИ (60 записей)
-- ===================================
INSERT INTO ShopPurchase (player_id, item, currency, amount, purchased_at) VALUES
(1, 'Mega Box', 'Gems', 80, '2025-03-13 12:00:00'), (2, 'Skin Pack', 'Gems', 150, '2025-06-12 12:00:00'),
(3, 'Token Doubler', 'Coins', 60, '2025-06-13 14:00:00'), (4, 'Golden Bundle', 'Gems', 275, '2025-03-14 10:00:00'),
(5, 'Power Points', 'Coins', 35, '2025-06-14 15:30:00'), (15, 'Level 11 Upgrade', 'Coins', 20000, '2025-03-15 11:00:00'),
(7, 'Hypercharge', 'Gems', 79, '2025-09-16 16:00:00'), (8, 'Real Money Offer', 'RealMoney', 9.99, '2025-04-06 18:30:00'),
(9, 'Starr Drop Mega', 'Gems', 149, '2025-12-12 11:00:00'), (17, 'Cosmetic Pin', 'Coins', 500, '2025-12-11 13:00:00'),
(23, 'New Brawler Unlock', 'Gems', 350, '2026-03-25 09:00:00'), (25, 'Gems Pack', 'RealMoney', 4.99, '2026-01-16 15:00:00'),
(21, 'Skin for El Primo', 'Gems', 199, '2025-01-20 10:00:00'), (1, 'Power Points', 'Coins', 100, '2025-04-01 11:00:00'),
(12, 'Mega Box', 'Gems', 80, '2024-12-01 14:00:00'), (30, 'Small Gem Pack', 'RealMoney', 1.99, '2026-03-20 10:00:00'),
(10, 'Epic Brawler Box', 'Gems', 170, '2025-07-06 15:00:00'), (14, 'Coin Doubler', 'Coins', 40, '2025-07-07 14:00:00'),
(28, 'Shelly Skin', 'Gems', 79, '2025-04-10 17:00:00'), (26, 'Power 9 Upgrade', 'Coins', 1200, '2025-04-15 12:00:00'),
(22, 'Gale Brawler', 'Gems', 350, '2025-10-06 11:00:00'), (13, 'Token Doubler', 'Coins', 60, '2025-10-07 13:00:00'),
(19, 'Legendary Starr Drop', 'Gems', 299, '2025-10-10 18:00:00'), (24, 'Small Coins Pack', 'RealMoney', 0.99, '2025-10-11 10:00:00'),
(16, 'Power Points', 'Coins', 50, '2025-05-01 12:00:00'), (6, 'Mega Box', 'Gems', 80, '2025-05-05 14:00:00'),
(29, 'Coin Pack', 'RealMoney', 2.99, '2025-05-10 16:00:00'), (27, 'Brawl Pass', 'Gems', 169, '2025-07-01 09:00:00'),
(18, 'Skin for Bull', 'Gems', 149, '2025-07-15 13:00:00'), (20, 'Level 10 Upgrade', 'Coins', 8000, '2026-04-10 11:00:00'),
(1, 'Brawl Pass Plus', 'RealMoney', 12.99, '2026-03-01 12:00:00'), (2, 'Pin Pack', 'Gems', 49, '2026-03-15 14:00:00'),
(3, 'Power 11 Upgrade', 'Coins', 20000, '2026-03-20 16:00:00'), (4, 'Token Doubler', 'Coins', 60, '2026-03-25 18:00:00'),
(5, 'Mega Box', 'Gems', 80, '2026-04-01 20:00:00'), (6, 'Hypercharge', 'Gems', 79, '2026-04-05 22:00:00'),
(7, 'Skin for Max', 'Gems', 299, '2026-04-10 10:00:00'), (8, 'Pin Pack', 'Gems', 49, '2026-04-15 12:00:00'),
(9, 'Coin Pack', 'RealMoney', 2.99, '2026-04-20 14:00:00'), (10, 'Level 10 Upgrade', 'Coins', 8000, '2026-04-20 16:00:00'),
(11, 'Mega Box', 'Gems', 80, '2026-04-20 18:00:00'), (12, 'Skin for Mortis', 'Gems', 149, '2026-04-20 20:00:00'),
(13, 'Token Doubler', 'Coins', 60, '2026-04-20 22:00:00'), (14, 'Power Points', 'Coins', 35, '2025-02-14 10:00:00'),
(15, 'Gems Pack', 'RealMoney', 9.99, '2025-02-15 11:00:00'), (16, 'Skin for Poco', 'Gems', 79, '2025-02-16 12:00:00'),
(17, 'Mega Box', 'Gems', 80, '2025-02-17 13:00:00'), (18, 'Token Doubler', 'Coins', 60, '2025-02-18 14:00:00'),
(19, 'Real Money Offer', 'RealMoney', 4.99, '2025-02-19 15:00:00'), (20, 'Power Points', 'Coins', 35, '2025-02-20 16:00:00'),
(21, 'Mega Box', 'Gems', 80, '2025-02-21 17:00:00'), (22, 'Skin Pack', 'Gems', 150, '2025-02-22 18:00:00'),
(23, 'Token Doubler', 'Coins', 60, '2025-02-23 19:00:00'), (24, 'Golden Bundle', 'Gems', 275, '2025-02-24 20:00:00'),
(25, 'Power Points', 'Coins', 35, '2025-02-25 21:00:00'), (26, 'Level 11 Upgrade', 'Coins', 20000, '2025-02-26 22:00:00'),
(27, 'Hypercharge', 'Gems', 79, '2025-02-27 23:00:00'), (28, 'Real Money Offer', 'RealMoney', 9.99, '2025-03-01 09:00:00'),
(29, 'Starr Drop Mega', 'Gems', 149, '2025-03-05 10:00:00'), (30, 'Cosmetic Pin', 'Coins', 500, '2025-03-10 11:00:00');

-- ===================================
-- 14. ЛИДЕРБОРДЫ И РЕЙТИНГ КЛУБОВ
-- ===================================
INSERT INTO Leaderboard (leaderboard_id, season_id, region, created_at) VALUES
(1, 1, 'Europe', '2025-04-25'), (2, 2, 'Asia', '2025-08-25'), (3, 3, 'Europe', '2025-11-25'),
(4, 4, 'Asia', '2026-02-20'), (5, 1, 'North America', '2025-04-25'), (6, 2, 'Africa', '2025-08-25'),
(7, 4, 'Global', '2026-02-20'), (8, 5, 'Europe', '2026-04-20'), (9, 3, 'South America', '2025-11-25'),
(10, 5, 'Oceania', '2026-04-20');

INSERT INTO ClubRanking (leaderboard_id, club_id, rank, points) VALUES
(1, 1, 1, 180), (1, 2, 2, 160), (1, 5, 3, 140),
(2, 3, 1, 185), (2, 4, 2, 130), (2, 7, 3, 120),
(3, 5, 1, 170), (3, 1, 2, 150), (3, 11, 3, 130),
(4, 3, 1, 185), (4, 7, 2, 135), (4, 10, 3, 115),
(5, 6, 1, 190), (5, 2, 2, 165), (5, 12, 3, 150),
(6, 8, 1, 175), (6, 4, 2, 140), (6, 11, 3, 110),
(7, 1, 1, 200), (7, 12, 2, 170), (7, 10, 3, 130), (7, 3, 4, 130),
(8, 11, 1, 195), (8, 5, 2, 160), (8, 1, 3, 140),
(9, 10, 1, 180), (9, 6, 2, 150), (9, 8, 3, 125),
(10, 9, 1, 180), (10, 12, 2, 160), (10, 2, 3, 140);