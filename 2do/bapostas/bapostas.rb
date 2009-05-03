class Bapostas
  
  def self.solve n
    m = 0
    a = Array.new n
    while m < n
      gets.split.each { |e| a[m] = e.to_i; m += 1 }
    end
    result = 0
    for i in 0...a.size
      sum = a[i]
      result = sum if sum > result
      for j in (i+1)...a.size
        sum += a[j]
        result = sum if sum > result
      end
    end
    puts result > 0 ? "The maximum winning streak is #{result}." : "Losing streak."
  end
  
end

while (n = gets.to_i) != 0
  Bapostas.solve n
end
