import csv

with open("mpg.csv", encoding="UTF-8") as csvfile:

    mpg = list(csv.DictReader(csvfile))

print(mpg[:3])
