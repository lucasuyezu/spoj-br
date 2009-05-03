i = 1
while ( n = gets.to_i ) != 0
  j = 0
  z = 0
  
  puts "Teste #{i}"
  i += 1
  n.times do
    x = gets.split
    j += x[0].to_i
    z += x[1].to_i
    puts j - z
  end
  puts
end
