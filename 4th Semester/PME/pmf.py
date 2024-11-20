sampleSpace = ['HHH', 'HHT', 'TTT']

def Count(txt):
    p = 1
    numHeads = txt.count('H')
    if numHeads == 2:
        points = 1
        p = p * 1/4
    elif numHeads == 3:
        points = 8
        p = p * 1/8
    else:
        points = 0
        p = p * 1/4
    return p

print('Value for 3 heads: 8\nValue of 2 heads: 1\n For any other: 0')

def pmf(lst):
    summ = 0;
    for l in lst:
        p = Count(l)
        summ = summ+p
    return summ

PMF = pmf(sampleSpace)
print('The PMF is: ', PMF)
