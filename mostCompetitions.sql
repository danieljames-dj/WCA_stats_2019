SELECT personId, COUNT(DISTINCT competitionId)
FROM Results
WHERE competitionId LIKE '%2019'
GROUP BY personId
ORDER BY COUNT(DISTINCT competitionId) DESC
LIMIT 10