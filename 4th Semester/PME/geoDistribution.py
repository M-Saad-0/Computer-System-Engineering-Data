import random
def geoDist(p, m):
    return pow(1-p, m-1)*p

def sendMessage(message, m, actualMessage):
    for i in range(1, m):
        ran = random.randint(0,9)
        if message[ran]==actualMessage:
            print("The first success was at: ", m)
            break
    return message[ran]

message = [1, 0, 0, 0, 0, 0, 0, 0, 0, 0]
actualMessage = 0
sendMessage(message, 2, actualMessage)
pOfm = geoDist(0.9, 2)
print(pOfm)
