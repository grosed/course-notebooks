import numpy as np
import sys

def matexp(X,m) :
    n,_ = np.shape(X)
    Z = np.identity(n)
    Y = Z
    for k in range(1,m) :
        Z = np.matmul(Z,X)/k
        Y = np.add(Y,Z)
    return Y



