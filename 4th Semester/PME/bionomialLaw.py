def factorial(val):
    f=1
    if val==0: 
        return 1
    for i in range(1,val):
        f = i*f;
    return f

def combination(n, k):
    return factorial(n)/(factorial(n-k)*factorial(k))

def bionomialTrial(n, k, p, q):
    return combination(n, k)*pow(p, k)*pow(q, n-k)

n=8; k=7; p=1/3; q=2/3;
print("Probability of six active speakers is: ", bionomialTrial(8,8,p,q)+bionomialTrial(n,k,p,q))
