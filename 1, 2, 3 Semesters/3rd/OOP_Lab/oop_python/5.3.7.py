class poly:
    def __init__(self):
        self.height = 0
        self.length = 0
    def set_values(self, h, l):
        self.height = h
        self.length = l

class Rect(poly):
    def area(self):
        return self.height*self.length
    
class tri(poly):
    def area(self):
        return (self.height*self.height)/2

r1 = Rect()
t1 = tri()
r1.set_values(10,20)
print ("Area of Rectangle:", r1.area())
t1.set_values(10,20)
print ("Area of Triangle:", t1.area())

