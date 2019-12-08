import mysql.connector
import operator

mydb = mysql.connector.connect(
  host="localhost",
  user="dany",
  passwd="emmaus",
  database="wca"
)
mycursor = mydb.cursor()

mycursor.execute("SELECT * FROM Results WHERE competitionId LIKE '%2019' AND eventId = '333bf'")
solveCount = {}
for row in mycursor:
    wcaId = row[7]
    if (wcaId not in solveCount):
        solveCount[wcaId] = 0
    for i in range(10,15):
        if (row[i] > 0):
            solveCount[wcaId] += 1
topList = sorted(solveCount.items(), key=operator.itemgetter(1), reverse=True)[:10]
for result in topList:
    print(result[0], ' ', result[1])