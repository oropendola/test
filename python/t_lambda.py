#!/cygdrive/c/Users/javi/AppData/Local/Programs/Python/Python36-32/python

a=[1,2,3,4,5,6,7,8,9,10]

f=filter(lambda x: x % 2 == 0, a)
for x in f:
   print(x)

m=map(lambda x : x ** x, a)
for x in m:
	print(x)

divisibleEntreTres=(lambda x : x % 3 == 0)
ff=filter(divisibleEntreTres, a)
for x in ff:
	print(x)

# Muy compacto
print([ i*i for i in a if (i % 2 == 0)])

