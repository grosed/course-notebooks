

from multiprocessing import Pool


def infractus(n) :
    try :
        if n > 10 :
            return n/0 # ooops !!!
        return 2*n
    except ZeroDivisionError :
        return "divided by zero"
    except :
        return "something went wrong - not sure what"
    

pool = Pool(2)

result = pool.starmap(infractus,[(2,),(12,)])



