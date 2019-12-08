import mysql.connector
import operator

mydb = mysql.connector.connect(
  host="localhost",
  user="dany",
  passwd="emmaus",
  database="wca"
)
mycursor = mydb.cursor()

mycursor.execute("""
SELECT R.personId, R.value1, R.value2, R.value3
FROM Results R LEFT JOIN Competitions C ON R.competitionId=C.id
WHERE R.competitionId LIKE '%2019' AND R.eventId = '333bf'
ORDER BY R.personId, C.month, C.day, R.roundTypeId
""")
highestStreak = {}
lastWcaId = ""
streak = 0
lastStreak = 0
for row in mycursor:
    if (lastWcaId != row[0]):
        if (lastStreak > streak):
            streak = lastStreak
        if (streak > 5):
            highestStreak[lastWcaId] = streak
        streak = 0
        lastStreak = 0
        lastWcaId = row[0]
    for i in range(1,4):
        if (row[i] > 0):
            lastStreak += 1
        else:
            if (lastStreak > streak):
                streak = lastStreak
            lastStreak = 0
topList = sorted(highestStreak.items(), key=operator.itemgetter(1), reverse=True)[:10]
for result in topList:
    print(result[0], ' ', result[1])