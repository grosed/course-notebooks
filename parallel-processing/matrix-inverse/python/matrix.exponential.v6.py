from matexp import matexp
import numpy as np
import sys
import os
from datetime import datetime

pid = os.getpid()
print("pid is : ",pid)
now = datetime.now()
print("start time : ",now)  


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

now = datetime.now()
print("end time : ",now) 






