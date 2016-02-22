require 'benchmark'

def fibonacci(n)
  n = n.to_i
  if n == 0
    fibonacci = 0
  elsif n <= 2
    fibonacci = 1
  else
    fibonacci = fibonacci(n - 1) + fibonacci(n - 2)
  end
end

puts "Please enter the nth number in the Fibonacci Series:"
n = gets.chomp

puts "#{n}th number in the Fibonacci Series is #{fibonacci(n)}."

Benchmark.bm do |x|
  x.report { fibonacci(n) }
end
