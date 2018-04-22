import numpy as np
import matplotlib.pyplot as plt

'''
Part A
INPUT: array with length 100
'''

def y(n , x):
    if (n == 0):
        return 0
    elif (n == 1):
        return 1
    # Equation: y[n] -4y[n-1]+4y[n-2]=20x[n]+10x[n-1]
    return (4 * y(n - 1, x) - 4 * y(n - 2, x) + 20 * x[n] + 10 * x[n - 1])

# shift only input. assuming n0<=n
def s(n,x,no=0):
    if (n == 0):
        return 0
    elif (n == 1):
        return 1
    # Equation: y[n] -4y[n-1]+4y[n-2]=20x[n]+10x[n-1]
    return (4 * y(n - 1, x) - 4 * y(n - 2, x) + 20 * x[n-no] + 10 * x[n - 1-no])


#TI example

inp_ti=np.arange(0,10)
out_ti = np.zeros((10,), dtype=int)
for n in range(0, 10):
    out_ti[n] = y(n, inp_ti)

#print ("y[5-1]={0} \n S{x[5-1]}={1}".__format__(str(out_ti[4])),str(s(5,inp_ti,1)))
print(out_ti[4])
print(s(5,inp_ti,1))

'''
# Inverse example
inp_inv1 = np.zeros((4,), dtype=int)
inp_inv2= np.array([5,0,0,0])
out_inv1 = np.zeros((4,), dtype=int)
out_inv2 = np.zeros((4,), dtype=int)
for n in range(0, 4):
    out_inv1[n] = y(n, inp_inv1)
    out_inv2[n]= y(n, inp_inv2)
print (out_inv1)
print (out_inv2)
'''

n = np.arange(0, 10)
plt.figure(1)
plt.subplot(211)
plt.plot(n, inp_ti)

plt.subplot(212)
plt.plot(n, out_ti)
plt.show()