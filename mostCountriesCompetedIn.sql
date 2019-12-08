SELECT Results.personId, COUNT(DISTINCT Competitions.countryId) AS count
FROM Results LEFT JOIN Competitions ON Results.competitionId=Competitions.id
WHERE Results.competitionId LIKE '%2019' AND Competitions.countryId NOT LIKE 'X_'
GROUP BY Results.personId
ORDER BY `count`  DESC