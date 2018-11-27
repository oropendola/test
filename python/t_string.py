#!/cygdrive/c/Users/javi/AppData/Local/Programs/Python/Python36-32/python

def new_line(num_lineas=2):
   print("\n"*num_lineas)

# Formatea

print("Mi nombre es %s y peso %d kg" % ("Javi",90))

s="guion para instalar build"

# Capitaliza primera letra de cada palabra
s=s.title()

# Centra texto y rellenar espacios con el caracter indicado
print(str("[ "+s+" ]").center(80,"="))

new_line()

q="   Te gusta el, te traigo y   Lorna a ti te trae el    "

# Elimina espacios a ambos lados
print(q.strip())

new_line()

# Extrae palabras ignorando espacios
for x in q.split():
   print(x)

new_line()

fichero="ID NOMBRE NOTA\n01 JAVIER 10.0\n02 LOLA 7.5\n03 JOSE 5.2\n04 LUCIA 10.0"

# splitlines devuelve una lista con cada elemento igual a una linea limitada
# por el salto de linea, eliminada esa linea
# startswith booleano si linea empieza con el texto indicado

print([ x for x in fichero.splitlines() if x.startswith("04") ])



