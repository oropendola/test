#!/cygdrive/c/Users/javi/AppData/Local/Programs/Python/Python36-32/python


traduccion={"uno":"one", "dos":"two", "tres":"three", "cuatro":"four", "cinco":"five"}

traduccion["seis"]  = "six"
traduccion["siete"] = "seven"
traduccion["ocho"]  = "eight"
traduccion["nueve"] = "nine"
traduccion["diez"]  = "ten"


for k in traduccion.keys():
   print(k)

print("\n")

for v in traduccion.values():
   print(v)

print("\n")

for k in traduccion.keys():
   print(traduccion[k])

print("\n")

for k,v in traduccion.items():
   print(k+":"+v)

print("\n")

