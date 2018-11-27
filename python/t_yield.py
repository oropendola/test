#!/cygdrive/c/Users/javi/AppData/Local/Programs/Python/Python36-32/python

# @ Javier Felipe Toribio 2018


def generaEnteros (max):
    x=max
    while x > 0:
        yield x
        x-=1

for i in generaEnteros(100):
    print(i,end=' ')

