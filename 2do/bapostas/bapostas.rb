class Bapostas
  
  def self.solve n
    m = 0
    a = Array.new n
    while m < n
      gets.split.each { |e| a[m] = e.to_i; m += 1 }
    end
    result = max_ending_here = 0
    for i in 0...a.size
      max_ending_here += a[i]
      max_ending_here = 0 if max_ending_here < 0
      result = max_ending_here if result < max_ending_here
    end
    result > 0 ? "The maximum winning streak is #{result}.\n" : "Losing streak.\n"
  end
  
end

output = ""
while (n = gets.to_i) != 0
  output << Bapostas.solve(n)
end
print output
