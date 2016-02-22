require 'benchmark'

def fibonacci(n)
  n = n.to_i
  series = [0, 1, 1]
  while series[n].nil?
    series.push(series[-1] + series[-2])
  end
  series.last
end

puts "Please enter the nth number in the Fibonacci Series:"
n = gets.chomp

puts "#{n}th number in the Fibonacci Series is #{fibonacci(n)}."

Benchmark.bm do |x|
  x.report { fibonacci(n) }
end
