
def factorial(n)
    fact = 1
    (1..n).each do |i|
        fact = fact * i
    end
    fact
end

puts factorial(5)