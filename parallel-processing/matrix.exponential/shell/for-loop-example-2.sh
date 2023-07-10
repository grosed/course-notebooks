#!/bin/bash
for i in {1..5}
do
    echo "running n=2000 m = 10 s = $i"
    python matrix.exponential.v5.py 2000 10 ${i} mat.exp.test
done
