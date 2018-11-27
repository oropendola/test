#!/cygdrive/c/Ruby24-x64/bin/ruby

=begin

  Probando el pretty print para ruby

=end

require 'pp'

arr=["uno","dos", 3, 4, ["cinco", "seis"], { "siete" => 7, "ocho" => 8  } ]

# Salida estandar del array
puts arr

# Salida con pretty print del array
pp arr
