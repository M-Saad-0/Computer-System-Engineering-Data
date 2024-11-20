import matplotlib.pyplot as plt
import numpy as np


x = np.arange(0.01, 1000, 0.01)  
y = np.sin(x) * np.cos(x) 


plt.hist(y)  
plt.show()

plt.axis([0,100, -1, 1])

plt.plot(x,y)
plt.show()
