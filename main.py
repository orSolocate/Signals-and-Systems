import numpy as np
import matplotlib.pyplot

'''
Part A
INPUT: array with length 100
'''

def y(n , x):
    '''
    :param n: discrete time variable
    :param x: x[n] discrete time signal (array)
    :return: y[n] discrete time output
    Initial values:
    y[0]=0, y[1]=0
    '''
    if (n == 0):
        return 1
    elif (n == 1):
        return 1
    # Equation: y[n] -4y[n-1]+4y[n-2]=20x[n]+10x[n-1]
    return (4 * y(n - 1, x) - 4 * y(n - 2, x) + 20 * x[n] + 10 * x[n - 1])


# (Not) Inverse example
'''
With input x1=[0,0,0,0] x2=[5,0,0,0]
we get y1=y2, and therefore the system is not inverted
'''
'''
x1 = np.zeros((4,), dtype=int)
x2 = np.array([5, 0, 0, 0])
y1 = np.zeros((4,), dtype=int)
y2 = np.zeros((4,), dtype=int)
for n in range(0, 4):
   y1[n] = y(n, x1)
   y2[n] = y(n, x2)

print (y1)
print (y2)
'''

# (Not) Stability example
'''
x1 is a bounded input x1=delta(1), and according to the accteptable graph y1 is not bounded.
'''
x1 = np.zeros((20,), dtype=int)
x1[1]=1
y1 = np.zeros((20,), dtype=int)
for n in range(0, 20):
   y1[n] = y(n, x1)

matplotlib.pyplot.plot(x1)
matplotlib.pyplot.show()
matplotlib.pyplot.plot(y1)
matplotlib.pyplot.show()
#add axis, titles, show both graphs together
