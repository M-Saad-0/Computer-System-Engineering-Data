sampleSpace = ['HHH', 'HHT', 'HTH', 'HTT', 'THH', 'THT', 'TTH', 'TTT']

Sy = []

for i in sampleSpace:
    numHead = i.count('H')
    if numHead == 3:
        points = 8
    elif numHead == 2:
        points = 1
    else:
        points = 0

    Sy.append(points)

print(Sy)

