#!/cygdrive/c/Users/javi/AppData/Local/Programs/Python/Python36-32/python


l=list(range(1,10)) + [10]*3

# item es equivalente a el valor inicial de l[i]

for i, item in enumerate(l):
   l[i]=1/(2*item-1)

print(l)


