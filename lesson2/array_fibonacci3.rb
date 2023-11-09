fibonacci = [0, 1]
while (next_fib = fibonacci[-1] + fibonacci[-2]) <= 100
  fibonacci.append(next_fib)
end
puts fibonacci