#!/cygdrive/c/Ruby24-x64/bin/ruby

=begin

  Ejemplos de Struct y OpenStruct

=end

require "ostruct"

# Pruebas Struct
#
Point=Struct.new(:x, :y)

p1=Point.new(3,4)

p2=Point.new(5,6)

puts "\nDatos de Struct x = #{p1.x} y = #{p1.y}"

# Pruebas OpenStruct
#
datos=OpenStruct.new

datos.name = "John"
datos.age = 44
datos.id = 5

puts "\nDatos creados dinamicamente de OpenStruct x = #{datos.name}, age = #{datos.age} y id = #{datos.id}"

