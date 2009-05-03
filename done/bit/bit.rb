n = 1
resposta = ''
while (m = gets.to_i) != 0

  i = m / 50
  
  m %= 50
  j = m / 10
  
  m %= 10
  k = m / 5
  
  m %= 5
  
  resposta << "Teste #{n}\n#{i} #{j} #{k} #{m}\n\n"
  n += 1
end
print resposta
