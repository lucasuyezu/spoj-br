n = 1
while gets.to_i != 0
  print "Teste #{n}\n#{instance_eval gets}\n\n"
  n += 1
end
