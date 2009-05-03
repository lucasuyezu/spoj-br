def soma(t, s)
  if t =~ /\+|\-/
    $`.to_i * s + soma($', $& == '-' ? -1 : 1)
  else
    t.to_i * s 
  end
end

n = 1
r = Hash.new
while($_ = gets.to_i) != 0
  print "Teste #{n}\n#{soma(gets, 1)}\n\n"
  n += 1
end
