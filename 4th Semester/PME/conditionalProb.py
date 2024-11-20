import random
sampleSpace = ['w', 'w', 'w', 'b', 'b']
def con(lst, num):
    p = []
    for i in range(0,num):
        r = random.randint(0,4)
        if lst[r]=='b':
            p.append(lst.count('b')/len(lst))
            print(lst.count('b'), len(lst))
            lst.pop()
            if len(lst)==3:
                break;
    return p

pb = con(sampleSpace, 4)
pb.append(pb[0]*pb[1])
print("The probability if two black balls are selected\n", pb)
