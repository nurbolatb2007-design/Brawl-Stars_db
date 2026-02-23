DROP TABLE IF EXISTS Season;
CREATE TABLE Season (
    season_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    start_date DATE,
    end_date DATE
);

DROP TABLE IF EXISTS Player;
CREATE TABLE Player (
    player_id INTEGER PRIMARY KEY AUTOINCREMENT,
    username TEXT NOT NULL UNIQUE,
    display_name TEXT,
    country TEXT,
    level INTEGER DEFAULT 1,
    trophies INTEGER DEFAULT 0,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    last_login DATETIME
);

DROP TABLE IF EXISTS Club;
CREATE TABLE Club (
    club_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    tag TEXT,
    region TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS Tournament;
CREATE TABLE Tournament (
    tournament_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    season_id INTEGER REFERENCES Season(season_id),
    owner_id INTEGER REFERENCES Club(club_id),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    finished_at DATETIME,
    region TEXT
);

DROP TABLE IF EXISTS ClubTournament;
CREATE TABLE ClubTournament (
    club_tournament_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER NOT NULL REFERENCES Club(club_id),
    tournament_id INTEGER NOT NULL REFERENCES Tournament(tournament_id),
    result TEXT,
    points INTEGER,
    UNIQUE(club_id, tournament_id)
);

DROP TABLE IF EXISTS ClubMembership;
CREATE TABLE ClubMembership (
    membership_id INTEGER PRIMARY KEY AUTOINCREMENT,
    club_id INTEGER NOT NULL REFERENCES Club(club_id),
    player_id INTEGER NOT NULL REFERENCES Player(player_id),
    role TEXT DEFAULT 'member',
    joined_at DATE DEFAULT CURRENT_DATE,
    left_at DATE,
    UNIQUE(club_id, player_id, joined_at)
);

DROP TABLE IF EXISTS Brawler;
CREATE TABLE Brawler (
    brawler_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL UNIQUE,
    rarity TEXT,
    release_date DATE
);
DROP TABLE IF EXISTS MeleeBrawler;
CREATE TABLE MeleeBrawler (
    brawler_id INTEGER PRIMARY KEY,
    damage_range TEXT,
    melee_specific_attr TEXT,
    FOREIGN KEY (brawler_id) REFERENCES Brawler(brawler_id) ON DELETE CASCADE
);
DROP TABLE IF EXISTS RangeBrawler;
CREATE TABLE RangeBrawler (
    brawler_id INTEGER PRIMARY KEY,
    projectile_speed INTEGER,
    range_specific_attr TEXT,
    FOREIGN KEY (brawler_id) REFERENCES Brawler(brawler_id) ON DELETE CASCADE
);

DROP TABLE IF EXISTS PlayerBrawler;
CREATE TABLE PlayerBrawler (
    player_brawler_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER REFERENCES Player(player_id),
    brawler_id INTEGER REFERENCES Brawler(brawler_id),
    level INTEGER DEFAULT 1,
    unlocked BOOLEAN DEFAULT FALSE,
    UNIQUE(player_id, brawler_id)
);

DROP TABLE IF EXISTS GameMode;
CREATE TABLE GameMode (
    mode_id INTEGER PRIMARY KEY AUTOINCREMENT,
    code TEXT NOT NULL UNIQUE,
    name TEXT,
    players_per_team INTEGER,
    teams_count INTEGER
);

DROP TABLE IF EXISTS Map;
CREATE TABLE Map (
    map_id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT NOT NULL,
    region TEXT
);

DROP TABLE IF EXISTS Match;
CREATE TABLE Match (
    match_id INTEGER PRIMARY KEY AUTOINCREMENT,
    tournament_id INTEGER REFERENCES Tournament(tournament_id),
    mode_id INTEGER REFERENCES GameMode(mode_id),
    map_id INTEGER REFERENCES Map(map_id),
    start_time DATETIME,
    finish_time DATETIME
);

DROP TABLE IF EXISTS MatchParticipant;
CREATE TABLE MatchParticipant (
    participant_id INTEGER PRIMARY KEY AUTOINCREMENT,
    match_id INTEGER REFERENCES Match(match_id),
    player_id INTEGER REFERENCES Player(player_id),
    brawler_id INTEGER REFERENCES Brawler(brawler_id),
    team_tag TEXT,
    kills INTEGER,
    damage INTEGER,
    placement INTEGER,
    is_winner BOOLEAN DEFAULT 0
);

DROP TABLE IF EXISTS TrophyHistory;
CREATE TABLE TrophyHistory (
    trophy_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER REFERENCES Player(player_id),
    changed_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    delta INTEGER,
    total INTEGER
);

DROP TABLE IF EXISTS ShopPurchase;
CREATE TABLE ShopPurchase (
    purchase_id INTEGER PRIMARY KEY AUTOINCREMENT,
    player_id INTEGER REFERENCES Player(player_id),
    item TEXT,
    currency TEXT,
    amount REAL,
    purchased_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS Leaderboard;
CREATE TABLE Leaderboard (
    leaderboard_id INTEGER PRIMARY KEY AUTOINCREMENT,
    season_id INTEGER REFERENCES Season(season_id),
    region TEXT,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP
);

DROP TABLE IF EXISTS ClubRanking;
CREATE TABLE ClubRanking (
    ranking_id INTEGER PRIMARY KEY AUTOINCREMENT,
    leaderboard_id INTEGER REFERENCES Leaderboard(leaderboard_id),
    club_id INTEGER REFERENCES Club(club_id),
    rank INTEGER,
    points INTEGER,
    UNIQUE(leaderboard_id, club_id)
);

