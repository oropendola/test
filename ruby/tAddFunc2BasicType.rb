#!/cygdrive/c/Ruby24-x64/bin/ruby
#
# @ Javier Felipe Toribio 2018
#
# Probando el aniadir funcionalidad a un tipo basico como Integer
#

# A la clase primitiva de numero de enteros le aniadimos
# la funcion factorial
#
class Integer
   def factorial
      res=1
      (1..self).each { |x|  res*=x }
      return res
   end
end

num=10

puts("Factorial de #{num} es #{num.factorial}\n")
puts("Factorial de 20 es #{20.factorial}\n")


