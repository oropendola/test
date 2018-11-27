#!/cygdrive/c/Ruby24-x64/bin/ruby

=begin

  Ejemplos de Proc y lambda

=end

#Pruebas pasar funciones Proc y lambda como parametros de una funcion


def saluda (funcion,nombre)
  funcion.call nombre
end

enEspanol = Proc.new do |name|
  puts "\nHola #{name} !"
end

enIngles = Proc.new do |nombre|
  puts "\nHello #{nombre} !"
end

saluda(enEspanol,"Javi")

saluda(enIngles,"Javi")

enJapones=lambda { |x| puts "\nConichiwua #{x}" }

saluda(enJapones,"Javi")
