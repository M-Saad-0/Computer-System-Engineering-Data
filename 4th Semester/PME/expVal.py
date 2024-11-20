p = [1/32, 5/32, 10/32, 10/32, 5/32, 1/32]
Sx = [0, 1, 2, 3, 4, 5]
summ = 0
summ2 = 0
for i in range(0, 6):
    summ = summ + p[i]*Sx[i]
    summ2 = summ2 + p[i]
print('Expected Value: ', summ)
print('PMF: ', summ2)
