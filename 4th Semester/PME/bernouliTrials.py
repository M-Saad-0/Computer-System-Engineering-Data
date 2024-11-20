import matplotlib.pyplot as plt
import random
p = list()
def bTrialWTrep(lst, r):
    ran = random.randint(0,19)
    global p
    for i in range(0,r):
        p.append(lst.count(lst[ran])/len(lst))
    if p[0]!=p[3]:
        return False
    return True

def bTrialWTOrep(lst, r):
    ran = random.randint(0,19)
    global p
    for i in range(0, r):
        p.append(lst.count(lst[ran])/len(lst))
        lst.pop(lst[ran])
    if p[0]!=p[3]:
        return False
    return True

def plotPr(p, rep):
    fig, ax = plt.subplots()
    ax.plot(rep, p)
    ax.set_title('Probability Plot')
    ax.set_xlabel('Number of Trials')
    ax.set_ylabel('Probaility')
    plt.show()

lst = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
r = 8
rep = [1, 2, 3, 4, 5, 6, 7, 8]
if bTrialWTrep(lst, r):
    print("Trials with replacement are Bernoulli trials")
else:
    print("Trials with replacement are not Bernoulli trials")

plotPr(p, rep)
p = []
if bTrialWTOrep(lst, r):
    print("Trials without replacement are Bernoulli trials")
else:
    print("Trials without replacement are not Bernoulli trials")

plotPr(p, rep)
