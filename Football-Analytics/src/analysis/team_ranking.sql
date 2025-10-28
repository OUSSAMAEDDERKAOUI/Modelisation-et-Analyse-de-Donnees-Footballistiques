-- team_ranking.sql (placeholder)
SELECT t.team_id, t.name, COUNT(m.match_id) as matches_played
FROM teams t
LEFT JOIN matches m ON t.team_id IN (m.home_team, m.away_team)
GROUP BY t.team_id, t.name
ORDER BY matches_played DESC;
