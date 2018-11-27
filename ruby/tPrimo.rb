#!/cygdrive/c/Ruby24-x64/bin/ruby

=begin

  Probando clase/modulo prime

=end

require 'prime'
require 'pp'

def mideTiempo (funcion,arg)

	inicio=Time.now

	funcion.call arg

	total=Time.now - inicio
	puts "Ha tardado #{total} segundos"
end

esPrimo = lambda { |n| puts "El numero #{n} es primo = #{Prime.prime?(n)}" }

#esPrimo.call 1003

mideTiempo(esPrimo, 70000013)

mideTiempo(esPrimo, 1375912333715931)

# Muestra todos los primos hasta el valor dado

max=2**10 - 1

puts "Primos hasta #{max}"

Prime.each(max).each do |primo|
	print "#{primo} "
end

puts
# Otra forma. Los N primeros primos
#
numPrimos=30
puts "\nLos #{numPrimos} primeros primos"
print "#{Prime.first(numPrimos)} "
puts
puts


# Descomponer un numero en factores primos devueltos en un array
#
# El array [[2, 2], [3, 1], [5, 1]] significa que el numero se 
# descompone en 2^2 * 3^1 * 5^1
#
def factoresPrimos (num)
	puts "El numero #{num} se descompone en estos factores primos"
	pp Prime.prime_division(num)
	puts
end

factoresPrimos 13057013
factoresPrimos 7654321
factoresPrimos 60

