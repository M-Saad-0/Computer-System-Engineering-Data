import matplotlib.pyplot as plt

def totalProb(a, b):
    return a + b

def plotPr(p, rep):
    fig, ax = plt.subplots()
    ax.plot(rep, p)
    ax.set_title('Probability Plot')
    ax.set_xlabel('Probabilities')
    ax.set_ylabel('Magnitude')
    plt.show()

Pw = 3/5
Pb = 2/4
Pb1 = 2/5
Pw1 = 3/4

Pw_w = Pw1 * Pw
Pw_b = Pb1 * Pw1

p = totalProb(Pw_w, Pw_b)

print('The probability that second ball is white: ', p)

plotPr([Pw, Pb, Pw1, Pb1, Pw_w, Pw_b, p], [1, 2, 3, 4, 5, 6, 7])
