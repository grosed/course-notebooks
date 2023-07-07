import numpy as np

np.random.seed(0)

n = 100
m = 10

X = np.random.rand(n,n)
Z = np.identity(n)
Y = Z

for k in range(1,m) :
    Z = np.matmul(Z,X)/k
    Y = np.add(Y,Z)



