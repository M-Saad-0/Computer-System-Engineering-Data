import matplotlib.pyplot as plt ;
import numpy as np;
from scipy import stats

np.random.seed(2)
randomNumber = np.random.randint(1, 40, 100, )
mean = randomNumber.mean()
median = (randomNumber[(len(randomNumber)/2).__floor__()-1]+randomNumber[(len(randomNumber)/2).__floor__()+1])/2
plt.hist(randomNumber)
plt.axvline(mean, color='red')
plt.show()
mode = stats.mode(randomNumber, keepdims=False)

plt.hist(mode)
plt.axvline(mean, color='red')
plt.show()
min = randomNumber.min()
max = randomNumber.max()

      
ax = plt.axes()

