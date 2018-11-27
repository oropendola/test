#!/cygdrive/c/Users/javi/AppData/Local/Programs/Python/Python36-32/python

class Fichero:
   def __init__(self,nombre,tamano):
      self.__nombre=nombre
      self.__tamano=tamano
   def __str__(self):
      return "Nombre: {:>5} Tamanio: {:>2}".format(self.__nombre,self.__tamano)
   def tamano(self):
      return self.__tamano

#def tamano(fich):
   #return fich.tamano()

lista = [ 
      Fichero("uno",2), 
      Fichero("dos",3), 
      Fichero("tres",1) 
]



for x in lista:
   print(x)

print("\n\n")

ordenado=sorted(lista,key=lambda fich: fich.tamano())

for x in ordenado:
   print(x)
