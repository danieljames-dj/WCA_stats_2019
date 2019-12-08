# GOLD
SELECT personId, COUNT(*) FROM Results
WHERE competitionId LIKE '%2019' AND roundTypeId IN ('c','f') AND pos = 1 AND best > 0
GROUP BY personId
ORDER BY COUNT(*) DESC
LIMIT 10

# SILVER
SELECT personId, COUNT(*) FROM Results
WHERE competitionId LIKE '%2019' AND roundTypeId IN ('c','f') AND pos = 2 AND best > 0
GROUP BY personId
ORDER BY COUNT(*) DESC
LIMIT 10

# BRONZE
SELECT personId, COUNT(*) FROM Results
WHERE competitionId LIKE '%2019' AND roundTypeId IN ('c','f') AND pos = 3 AND best > 0
GROUP BY personId
ORDER BY COUNT(*) DESC
LIMIT 10

# PODIUMS
SELECT personId, COUNT(*) FROM Results
WHERE competitionId LIKE '%2019' AND roundTypeId IN ('c','f') AND pos <= 3 AND best > 0
GROUP BY personId
ORDER BY COUNT(*) DESC
LIMIT 10