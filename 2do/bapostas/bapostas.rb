class Bapostas
  
  def initialize
    @line = []
    @index = 0
  end
  
  def read_integer
    if @index == @line.size
      onon = gets
      @line = onon.split
      @index = 0
      return read_integer
    end
    result = @line[@index].to_i
    @index += 1
    return result
  end
  
  def solve n
    a = Array.new n
    a.collect! { read_integer }
    result = max_ending_here = 0
    a.each do |e|
      max_ending_here += e
      max_ending_here = max_ending_here > 0 ? max_ending_here : 0
      result = result > max_ending_here ? result : max_ending_here
    end
    result > 0 ? "The maximum winning streak is #{result}.\n" : "Losing streak.\n"
  end
  
end

bapostas = Bapostas.new
n = bapostas.read_integer
output = ""
while n != 0
  output << bapostas.solve(n)
  n = bapostas.read_integer
end
print output
