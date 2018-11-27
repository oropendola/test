#!/cygdrive/c/Ruby24-x64/bin/ruby

=begin

  @ Javier Felipe Toribio 2018

  Ejemplos de escritura/lectura en ficheros

=end

=begin
  Modos de apertura de fichero:

    r  solo lectura
    r+ lectura-escritura al principio del archivo
    w  solo escritura, trunca fichero si ya existe, sino lo crea
    w+ lectura-escritura truncando el archivo sobreescribiendolo si ya existe
    a  solo escritura, agrega al final del archivo si ya existe
    a+ solo escritura, agrega al final del archivo si ya existe. Si no existe lo crea
=end

f=File.new("tFicheros_out_1.txt","w")
	f.puts ("Dato numero 1")
f.close

g=File.new("tFicheros_out_2.txt","w+")

	5.times do |x|
		g.write ("#{x} ")
	end

	g.puts

	for x in 'a'..'z' do
		g.write ("#{x} ")
	end

	g.puts

	for x in 'A'..'Z' do
		g.write ("#{x} ")
	end

g.close

=begin
	Forma abreviada que cierra el archivo automaticamente
=end

File.open("tFicheros_out_3.txt","w+") { |fichero| fichero.puts("Dato 2") }

File.open("tFicheros_out_4.txt","w+") {
       |f| f.puts("Primera linea")
      	   f.puts("Segunda linea") 
}

=begin
	Lectura
=end

puts File.read("tFicheros_out_2.txt")

File.readlines("tFicheros_out_2.txt").each { |linea| puts "==> #{linea}" }


=begin
	Borrado de fichero
=end

File.delete("tFicheros_out_4.txt")

=begin
	Comprobacion de existencia de archivo al abrirlo
=end

def muestraFichero (nombre)

	if File.file?(nombre)
		f=File.open(nombre)
		puts f.read
		f.close
	else
		puts "Fichero #{nombre} no existe"
	end
end

muestraFichero("NoExiste.txt")
muestraFichero("tFicheros_out_3.txt")

def verPermisos(nombre)
	puts "Fichero #{nombre}"
	puts "Se puede leer"           if File.readable? (nombre)
	puts "Se puede escribir en el" if File.writable? (nombre)
	puts "Se puede ejecutar"       if File.executable? (nombre)
end

verPermisos("tFicheros_out_2.txt")
