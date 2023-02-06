import sys
import time
import datetime

print(sys.version)
t = int(sys.argv[1])
print("the time is now ",datetime.datetime.now())
print("zzzzzz")
time.sleep(t)
print("hello - I slept for ",t," seconds")
print("the time is now ",datetime.datetime.now())
