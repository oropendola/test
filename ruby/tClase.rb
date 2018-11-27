#!/cygdrive/c/Ruby24-x64/bin/ruby

=begin

  @ Javier Felipe Toribio 2018

  Ejemplo de uso de accessor en clases y datos estaticos

=end
class Empleado

   # valor estatico de la clase
   #
   @@punteros=0
   
   attr_accessor :nombre
   attr_accessor :edad
   attr_accessor :sueldo
   attr_accessor :rol

   def initialize(nombre,edad,sueldo,rol)
      @nombre=nombre
      @edad=edad
      @sueldo=sueldo
      @rol=rol
      @@punteros += 1
   end 

   def report
      print "Nombre : #{@nombre}\nEdad   : #{@edad}\nSueldo : #{@sueldo}\nRol    : #{@rol}\n\n"
   end 

   def self.punteros
      return @@punteros
   end

end

if __FILE__ == $0

  e1=Empleado.new("Julia",41,40000.0,"Manager")
  e2=Empleado.new("Lorenzo",39,39000.0,"Senior")

  e1.report
  e2.report

  print "Punteros #{Empleado.punteros}"

end

