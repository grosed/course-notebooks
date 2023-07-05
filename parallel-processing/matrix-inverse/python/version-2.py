import numpy as np
import sys

n = int(sys.argv[1])
X = np.random.rand(n,n)
Y = np.linalg.inv(X)
