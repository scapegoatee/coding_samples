def square
    sqr = 0
    puts "Welcome to the Square calculator. Enter a number!"
    puts ""
    number = gets.chomp.to_i
    (number + 1).times do |i|
        sqr = i ** 2
    end
    puts ""
    puts "The Square of #{number} is #{sqr}!"
    puts ""
end

def cube
    cub = 0
    puts "Welcome to the Cube calculator. Enter a number!"
    puts ""
    number = gets.chomp.to_i
    (number + 1).times do |i|
        cub = i ** 3
    end
    puts ""
    puts "The Cube of #{number} is #{cub}!"
    puts ""
end

def sum
    puts "Welcome to the Sum calculator. Enter a number!"
    puts ""
    number = gets.chomp.to_i
    sum_formula = (1..number).reduce(0) { |sum, x| sum + x }
    puts ""
    puts "The Sum of #{number} is #{sum_formula}!"
    puts ""

end
puts "Welcome to the Math calculator! Write the name of the function you want to use."
puts ""
puts "Type square or cube or sum: "
puts ""
function = gets.chomp
begin
  send(function)
rescue NoMethodError
    puts ""
    puts "Be cool! Don't act over-smart! ;)"
    puts ""
end
=begin
if function == "square" 
     square
elsif function == "cube"
  cube
elsif function == "sum"
     sum
else
    puts "muhah"
end
=end