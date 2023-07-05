import numpy as np
import sys

n = int(sys.argv[1])
m = int(sys.argv[2])
s = int(sys.argv[3])

np.random.seed(s)

X = np.random.rand(n,n)
Z = np.identity(n)
Y = Z

for k in range(1,m) :
    Z = np.matmul(Z,X)/k
    Y = np.add(Y,Z)

print(Y)

import scipy

print(scipy.linalg.expm(X))
