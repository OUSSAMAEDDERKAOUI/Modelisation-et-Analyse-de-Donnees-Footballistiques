-- player_discipline.sql (placeholder)
SELECT player_id, name, SUM(yellow_cards) AS yellow_cards, SUM(red_cards) AS red_cards
FROM player_stats
GROUP BY player_id, name
ORDER BY red_cards DESC, yellow_cards DESC;
