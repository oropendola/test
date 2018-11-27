#!/cygdrive/c/Users/javi/AppData/Local/Programs/Python/Python36-32/python

def saludar(lenguaje):
   def hola_es():
      print("Hola")
   def hola_en():
      print("Hello")
   def hola_deu():
      print("Hallo")
   funciones = {"es" : hola_es, "en" : hola_en, "deu" : hola_deu }
   return funciones[lenguaje]

f=saludar("es")

f()
            

saludar("en")()

