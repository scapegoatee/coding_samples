# Generate Fibonacci Series upto n.

def fibonacci(n)
  series = [0, 1]
  loop do
    foobar = series[-1] + series[-2]
    break if foobar >= n
    series << foobar
  end
  puts series
end

fibonacci(100).inspect
