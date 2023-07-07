from matexp import matexp
import numpy as np
import sys

n = int(sys.argv[1])
m = int(sys.argv[2])
s = int(sys.argv[3])
stem = str(sys.argv[4])

np.random.seed(s)

X = np.random.rand(n,n)
Y = matexp(X,m)


fileX = stem + ".X.n=" + str(n) + ".m=" + str(m) + ".s=" + str(s)
fileY = stem + ".Y.n=" + str(n) + ".m=" + str(m) + ".s=" + str(s)


np.save(fileX,X)
np.save(fileY,Y)






