#!/bin/bash
for i in {1..5}
do
    python ./../sleep.py ${i} > ${i}.out &
done
