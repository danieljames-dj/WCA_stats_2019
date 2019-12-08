SELECT organizer_id, COUNT(competition_id) as organizedCompCount
FROM `competition_organizers`
WHERE competition_id LIKE '%2019'
GROUP BY organizer_id ORDER BY `organizedCompCount` DESC