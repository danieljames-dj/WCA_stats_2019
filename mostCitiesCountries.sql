SELECT cityName, COUNT(*) as compCount FROM Competitions WHERE year = 2019 GROUP BY cityName ORDER BY compCount DESC LIMIT 10;

SELECT countryId, COUNT(*) as compCount FROM Competitions WHERE year = 2019 GROUP BY countryId ORDER BY compCount DESC LIMIT 10;