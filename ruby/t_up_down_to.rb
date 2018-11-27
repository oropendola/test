#!/cygdrive/c/Ruby24-x64/bin/ruby
#
# @ Javier Felipe Toribio 2018
#
# Probando upto y downto
#
#

# Se ejecuta al salir del programa

at_exit do puts("\n\nEso es todo. Gracias por su atencion !!") end

# Poner un loop como un oneliner pero no con llaves

100.downto 2 do |x| print("#{x} ") end

puts("\n\n")

1.upto 10 do |x| print("#{x**2} ") end

puts()
