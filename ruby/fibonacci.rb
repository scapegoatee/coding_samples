# Generate Fibonacci Series upto n.
# 0 + 1 = 1, 1 + 1 = 2, 2 + 1 = 3, 3 + 2 = 5, 5 + 3 = 8,...
# x   y   c  c   x   
# when x = 2, y = 3, z = 5
# when


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