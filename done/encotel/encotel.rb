gets
while $_
  for letra in 0...$_.size-1
    numero = case $_[letra]
      when 32     then ' '
      when 45     then '-'
      when 48     then 0
      when 49     then 1
      when 65..67 then 2
      when 68..70 then 3
      when 71..73 then 4
      when 74..76 then 5
      when 77..79 then 6
      when 80..83 then 7
      when 84..86 then 8
      when 87..90 then 9
      else
        print $_[letra]
      end
    print numero unless numero.nil?
  end
  puts
  gets
end
