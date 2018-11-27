#!/cygdrive/c/Users/javi/AppData/Local/Programs/Python/Python36-32/python

# Ejemplo de property, se define dentro de la clase para ocultar
# setters y getters y que la notacion sea menos compleja

class Cuenta:
   def __init__(self,banco):
      self.banco=banco
      self.__cantidad=0

   def ingresa(self,suma):
      self.__cantidad+=suma

   def abre_cuenta(self,cantidad):
      self.__cantidad=cantidad

   def saldo(self):
      return self.__cantidad

   dinero = property(saldo,abre_cuenta)


c=Cuenta("Bankia")

c.dinero=123
print(c.dinero)
