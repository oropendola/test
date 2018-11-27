#!/cygdrive/c/Ruby24-x64/bin/ruby

=begin

  @ Javier Felipe Toribio 2018

  Ejemplos de sequencias de control
  Ver otros ejemplos para iterar con arrays en el fichero tArray.rb

=end

# Creamos un array de cadenas de caracteres


puts "Usando for" 

for i in 1..20 do

  print "#{i} "

end

puts "\nUsando each do primera sintaxis de varias lineas" 

(1..5).each do |i|

  print "#{i} "

end


puts "\nUsando each do segunda sintaxis de una linea" 

(1..5).each { |i| print "#{i} " }


puts "\nUsando times"

20.times do |i|

  print "#{i} "

end

