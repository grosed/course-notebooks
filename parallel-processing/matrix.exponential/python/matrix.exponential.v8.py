from matexp import matexp
import numpy as np
from multiprocessing import Pool

n = 2000
m = 100
s = 0

np.random.seed(s)

pool = Pool(2)

X1 = np.random.rand(n,n)
X2 = np.random.rand(n,n)

print("starting Y1 and Y2")
result = pool.starmap(matexp,[(X1,m),(X2,m)])
















