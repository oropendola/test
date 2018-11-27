#!/cygdrive/c/Users/javi/AppData/Local/Programs/Python/Python36-32/python

# @ Javier Felipe Toribio 2018
#
# Probando reduce
#
# Hace una operacion sobre los pares de una lista acumulando el resultado
# y devolviendolo en un return al acabar 
#
from functools import reduce;

num=10

res=reduce((lambda x,y: x * y), [x for x in range(1,num+1)])

print(num,"! is ",res)
