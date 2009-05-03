class Bapostas
  
  def self.solve n
    m = 0
    a = Array.new n
    while m < n
      gets.split.each { |e| a[m] = e.to_i; m += 1 }
    end
    result = max_ending_here = 0
    a.each do |e|
      max_ending_here += e
      max_ending_here = 0 if max_ending_here < 0
      result = max_ending_here if result < max_ending_here
    end
    puts result > 0 ? "The maximum winning streak is #{result}." : "Losing streak."
  end
  
end

while (n = gets.to_i) != 0
  Bapostas.solve n
end
