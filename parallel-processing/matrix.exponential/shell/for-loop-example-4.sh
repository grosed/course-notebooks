#!/bin/bash
for i in {1..5}
do
    echo "running n=2000 m = 10 s = $i"
    python matrix.exponential.v6.py 2000 10 ${i} mat.exp.test > log.${i}.out &
done
