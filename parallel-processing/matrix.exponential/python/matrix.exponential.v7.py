from matexp import matexp
import numpy as np
from multiprocessing import Pool

n = 2000
m = 10
s = 0

np.random.seed(s)

pool = Pool(2)

X = np.random.rand(n,n)
print("starting Y1")
H1 = pool.apply_async(matexp,(X,m))

X = np.random.rand(n,n)
print("starting Y2")
H2 = pool.apply_async(matexp,(X,m))

print("waiting for Y1")
Y1 = H1.get()

print("waiting for Y1")
Y2 = H2.get()














