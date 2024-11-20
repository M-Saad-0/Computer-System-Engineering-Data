import copy
class Student:
    def __init__(self, i=0, n="", g=0.0):
        print("In Parameterized Constructor")
        self.id = i
        self.name = n
        self.gpa = g
    def __del__(self):
        print("destructor")
    def show(self):
        print(self.id, " ", self.name," ", self.gpa)

s1 = Student(2101, "Muhammad", 3.2)
s1.show()
s2 = copy.copy(s1)
s2.show()
s3 = copy.deepcopy(s1)
s3.show()

del s1
del s2
del s3