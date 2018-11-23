number = 10
sum = 0

(1..number).each do |x|
    next if x % 1 != 0
    sum = sum + x
end
puts sum

puts((1..number).reduce(0) do |sum, x|
   next if x % 1 != 0
   sum + x
end)

def foo(x)
end

foo x
foo(x)