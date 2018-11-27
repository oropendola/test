#!/cygdrive/c/Users/javi/AppData/Local/Programs/Python/Python36-32/python

import enum

class MiEnumerado(enum.Enum):
	
	NULO=0
	PASIVO=1
	ACTIVO=2
	TERMINADO=3

def main():
	try:
		print ('\nNombre del enumerado: {}'.format(MiEnumerado.TERMINADO.name))
		print ('Valor del enumerado: {}'.format(MiEnumerado.TERMINADO.value))
	except:
		pass

if __name__ == "__main__":
	main()

