class Complex:
    def __init__(self):
        self.re = 0.0
        self.im = 0.0
    def __init__(self, r, i):
        self.re = r
        self.im = i
    def addComplex(self, num1, num2):
        self.re = num1.re + num2.re
        self.im = num1.im + num2.im
    def negate(self):
        self.re = -self.re
        self.im = -self.im
        return self
    def show(self):
        if self.im>0: print(self.re, "+", str(self.im)+"i")
        else: print(self.re, str(self.im)+"i")

c1=Complex(3,2.5)
print ("First Compleex Number: ")
c1.show()
c2=Complex(5,3)
print ("Second Complex Number: ")
c2.show()
c=Complex(0,0)
print ("Sum of two Complex Nummbers: ")
c.addComplex(c1,c2)
c.show()
c=c1.negate()
print ("Negation off Complex Number: ")
c.show()

