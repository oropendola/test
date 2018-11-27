#!/cygdrive/c/Ruby24-x64/bin/ruby

=begin

  @ Javier Felipe Toribio 2018

  Pruebas de comandos aplicables a arrays

=end

def msg(arr)
  arr.each do |x|
    print (x.to_s+" ")
  end
  puts
end

def check(arr)
  if arr.length > 0
    puts("Con #{arr.length} elementos")
  else
    puts("vacio")
  end

end

a=[6,3,1,3,7,1,9]

a << 4 << 2 << 3

msg a

a.reverse!.uniq!

msg a

a.sort!

msg a

check a

a.clear

check a


puts "\nIterando un array"

arr=[]

arr << "uno" << "dos" << "tres" << "cuatro" << "cinco"

puts "Primer elemento #{arr.first}"
puts "Ultimo elemento #{arr.last}"
puts "Penultimo elemento #{arr[-2]}"

puts "Posicion de la ""tres"" #{arr.index('tres')}" 
puts "Posicion de la ""noExiste"" #{arr.index('noExiste')}" 

msg arr

puts "\nIncluye elementos al inicio con unshift"

arr.unshift("cero")

msg arr

puts "\nIncluye elementos al final con push"

arr.push("seis")
arr.push("siete")
arr.push("NaN")

msg arr

puts "\nBorra elementos delete_at y delete"

arr.delete_at(arr.index("NaN"))
arr.delete("siete")

msg arr

puts "\nBorra los tres ultimos con pop"

3.times do
  arr.pop
end

msg arr

puts "\nBorra primero con shift"

arr.shift 

msg arr

puts "\nIterando con each_with_index"

arr.each_with_index do |ele,idx|
  puts "Elemento numero #{idx} es #{ele}"
end

puts "\nIterando con for"
for str in arr do
  puts str
end
