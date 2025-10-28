-- Placeholder SQL to create tables for teams, players, matches

CREATE TABLE IF NOT EXISTS teams (
    team_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    country TEXT
);

CREATE TABLE IF NOT EXISTS players (
    player_id SERIAL PRIMARY KEY,
    name TEXT NOT NULL,
    team_id INTEGER REFERENCES teams(team_id),
    position TEXT
);

CREATE TABLE IF NOT EXISTS matches (
    match_id SERIAL PRIMARY KEY,
    date DATE,
    home_team INTEGER REFERENCES teams(team_id),
    away_team INTEGER REFERENCES teams(team_id),
    home_score INTEGER,
    away_score INTEGER
);
