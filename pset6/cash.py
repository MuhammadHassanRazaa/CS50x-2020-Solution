from cs50 import get_float

numberofcoins = 0

while True:
    cashow = get_float("Change owed: ")
    if cashow > 0.0:
        break

change = round(cashow * 100)


while (change >= 25):
    numberofcoins += 1
    change = change - 25


while (change >= 10):
    numberofcoins += 1
    change = change - 10


while (change >= 5):
    numberofcoins += 1
    change = change - 5


while (change >= 1):
    numberofcoins += 1;
    change = change - 1

print(numberofcoins)
