import numpy as np
import matplotlib.pyplot as plt

'''
Part A
INPUT: array with length 100
'''

def y(n , x):
    '''
    :param n: discrete time variable
    :param x: x[n] discrete time signal (array)
    :return: y[n] discrete time outputt (array)
    Initial values:
    y[0]=1, y[1]=1
    '''
    if (n == 0):
        return 1
    elif (n == 1):
        return 1
    # Equation: y[n] -4y[n-1]+4y[n-2]=20x[n]+10x[n-1]
    return (4 * y(n - 1, x) - 4 * y(n - 2, x) + 20 * x[n] + 10 * x[n - 1])

def y_non_recursive(n,x,ymin1,ymin2):
    #function that makes our life easier to computer many values fo y..
    if n==0:
        return ymin2
    if n==1:
        return ymin1
    return 4*ymin1-4*ymin2+20*x[n]+10*x[n-1]


'''
(Not) Inverse example
With input x1=[0,0,0,0] x2=[5,0,0,0]
we get y1=y2, and therefore the system is not inverted
'''
print ('(Not) Inverse example')
x1 = np.zeros((4,), dtype=int)
x2 = np.array([5, 0, 0, 0])
y1 = np.zeros((4,), dtype=int)
y2 = np.zeros((4,), dtype=int)
for n in range(0, 4):
   y1[n] = y(n, x1)
   y2[n] = y(n, x2)

print ('y1={0}'.format(y1))
print ('y2={0}'.format(y2))

'''
# (Not) Stability example
x1 is a bounded input x1=delta[1] though y1 is not bounded (see graph..)
'''
x = np.zeros((20,), dtype=int)
x[1]=1
y = np.zeros((20,), dtype=int)
y[0]=1
y[1]=0
for n in range(2, 20):
   y[n] = y_non_recursive(n, x, y[n-1], y[n-2])

n=range(0,20)
plt.plot(n,x, 'b', label="x[n]")
plt.plot(n,y, 'r', label="y[n]")
plt.xlabel('n')
plt.show()
