#!/cygdrive/c/Users/javi/AppData/Local/Programs/Python/Python36-32/python

# @ Javier Felipe Toribio 2018

from datetime import datetime

# Funcion que vamos a decorar para aumentar su funcionalidad
#
def Log (msg,nivel):
    return "{0} : {1}".format(nivel,msg)

# El decorador tan solo devuelve otra funcion con el sw ampliado

def addFrame (func):
    def wrap(msg,nivel):
        margen=2
        marco=(2*margen+len(func(msg,nivel))) * '*'
        str= marco+"\n"
        str+="* {} *".format(func(msg,nivel))+"\n"
        str+= marco+"\n"
        return str
    return wrap

# Tres formas validas de usar el decorador

framedLog=addFrame(Log)
print(framedLog("Se ha alcanzado un uso de 90% de memoria","WARN"))

# Podemos reescribir la funcion original con su version decorada:
#
#  Log=addFrame(Log)
#  print(Log("Division entre cero","ERROR"))

# Lo anterior lo podemos hacer mejor de esta manera:
#
# @decorador es una sintaxis mas compacta para reescribir una funcion
# con su decorador. Simplemente yendo a la definicion de la funcion
# a reescribir por su vesion decorada y aniadir esta linea al principio:
#
@addFrame
def Log (msg,nivel):
    return "{0} : {1}".format(nivel,msg)

print(Log("Division entre cero","ERROR"))

# Se puede aniadir multiples decoradores
def addTime(func):
    def wrap(msg,nivel):
        return func (str(datetime.now())+" "+msg,nivel)
    return wrap

def frameFields(func):
    def wrap(msg,nivel):
        return func('"'+msg+'"',"["+nivel+"]")
    return wrap

# Multiples decoradores

#@addFrame
@addTime
@frameFields
def Log (msg,nivel):
    return "{0} : {1}".format(nivel,msg)

print(Log("IO error when reading configuration","ERROR"))

print(Log("port state changed to LISTEN","DEBUG"))




