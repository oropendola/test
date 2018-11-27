#!/cygdrive/c/Ruby24-x64/bin/ruby

=begin

  Pruebas de constantes y punteros estaticos dentro de una clase.
  Ejemplo de constante global

=end

$mi_constante = 123;

class Path

  attr_accessor :location

  def initialize
    @location="/home/nor"
    puts("Path ctor called")
  end
end

class Base < Path

  # Constante
  PI = 3.14159

  # estatica de la clase
  @@punteros = 0

  attr_accessor  :id
  attr_accessor  :name

  def initialize(id,name)
	@id=id
	@name=name
  	@@punteros += 1
  end

  def atributos
	puts "\nName: #{@name} Id: #{@id}"
  end 

  def constantes
	puts "\nPi: #{PI}"
  end

  def self.estaticos
	puts "\npunteros #{@@punteros}"
  end 

  def to_s
    return "Id => #{@id} Name => #{@name}"
  end

  #def location
  #      puts (self.super.location)
  #end

end

def globales
    puts "Constante global al paquete #{$mi_constante}"
end

=begin
  Test constant and static variables
=end
def prueba1

  b=Base.new(1,"Javier")
  c=Base.new(2,"Julia")
  
  b.atributos
  b.constantes
  Base.estaticos

end

=begin
  Test attr_accessor and inheritance
=end
def prueba2

  names=["Felipe","Marisa","Laura"]
  arr=[]
  for i in (0...3)
  
    arr << Base.new(i,names[i])
  
  end

  arr[1].name= "Maria"

  arr.each do |x|

    puts(x)

  end

  #puts (arr[1].location)

end

if __FILE__ == $0

  prueba1

  #prueba2

end
