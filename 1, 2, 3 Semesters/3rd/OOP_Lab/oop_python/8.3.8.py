class complex:
    def __init__(self, r=0, i=0):
        self.re = r
        self.im = i
    def sum(self, c):
        temp = complex()
        temp.re = self.re + c.re
        temp.im = self.im + c.im
        return temp
    def __add__(self, c): 
        temp = complex()
        temp.re = self.re + c.re
        temp.im = self.im + c.im
        return temp
    def __invert__(self): 
        temp = complex()
        temp.re = ~(self.re)
        temp.im = ~int(self.im)
        return temp
    def show(self):
        print (self.re,"+",self.im,"i")
c1 = complex(2,3.5)
c1.show()
c2 = complex(3.5,2)
c2.show()
c3 = complex()
c3 = c1.sum(c2)
c3.show()
c3 = c1 + c2
c3.show()
c1 = ~c1
c1.show()