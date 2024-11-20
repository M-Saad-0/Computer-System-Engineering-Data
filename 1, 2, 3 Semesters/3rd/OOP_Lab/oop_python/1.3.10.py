class Complex:
    def __init__(self):
        self.re = 0
        self.im = 0
    def __init__(self, r ,i):
        self.re = r
        self.im = i
    def set_value(self, rr, ii):
        self.re = rr
        self.im = ii
    def show(self):
        print("Complex Number: ", self.re, " + ", str(self.im) + "i")

obj1 = Complex(1, 2)
obj1.show()

obj2 = Complex(0, 0)
obj2.set_value(2, 4)
obj2.show()