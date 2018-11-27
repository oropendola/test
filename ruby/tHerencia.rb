#!/cygdrive/c/Ruby24-x64/bin/ruby


=begin

  @ Javier Felipe Toribio 2018

  Ejemplo de herencia entre clases, uso de la palabra clave "super", convertir
  clase a string con "to_s", definicion del operador suma de clases, ...

=end

class Animal

	attr_accessor :nombre

	def initialize(nombre)
		@nombre=nombre
	end
end

class Pajaro < Animal

	attr_accessor :habitat

	def initialize(nombre,habitat)
		@habitat=habitat
		super(nombre)
	end

	def to_s
		return "El #{nombre} vive en #{habitat}"
	end

	def +(o)
		nuevo=Pajaro.new(@nombre+" y "+o.nombre, @habitat+" y "+o.habitat)
		return nuevo
	end
end

if __FILE__ == $0

	
	a = Pajaro.new("Reyezuelo sencillo","bosque")
	b = Pajaro.new("Chorlito carambolo","cultivos");
	c = a + b

	arr=[]
	arr << a << b << c

	arr.each do |x|
		puts(x)
	end
end

