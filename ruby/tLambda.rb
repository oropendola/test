
#!/cygdrive/c/Ruby24-x64/bin/ruby
#
# @ Javier Felipe Toribio 2018
#
# Pruebas con funciones lambda
#

# sintaxis para definir una funcion lambda

pow3 = lambda { |x| x**3 }

# staby syntax included in ruby version 1.9

remainder = -> x,y { x%y }

# sintaxis para llamar a una funcion lambda

r=pow3.call(3)

puts r

r=pow3.(5)

puts r

r=pow3[7]

puts r

# lambda tiene la opcion curry incluida de serie
#

rem9 = remainder.curry.call(9)

puts rem9.call(3)

puts rem9.call(5)

puts rem9.call(7)
