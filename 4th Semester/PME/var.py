def exp(p, Sx):
    s = 0
    for i in range(0, len(p)):
        s = s + p[i]*Sx[i]
    return s

def var(p, Sx):
    Sx2 = Sx
    for i in range(0, len(Sx)):
        Sx2[i] = pow(Sx[i], 2)
    return -(exp(p, Sx2) - pow(exp(p, Sx), 2))

Sx = [0, 1, 2, 3]
p = [1/8, 1/4, 1/4, 1/8]

Var = var(p, Sx)

print('Variance of Heads in three tosses: ', Var)

