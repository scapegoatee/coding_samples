=begin

- Aim: * Leap year is a number that is divisible by 4. 

       * However, numbers exactly divisible by 100 aren't a leap year
         but, numbers divisible by 400 are a leap year.

       * Print the next twenty leap years from current day.

- This is the general code to print leap years till n:

def leap_year
    n = 3000
    (1..n).each do |i|
        next unless i % 4 == 0
        next if (i % 100 == 0) && (i % 400 != 0)
        puts i
    end
end
leap_year
=end

def leap_year
    require 'date'
    date = Date.today.year.to_i
    end_date = date + 90
    (date..end_date).each do |i|
        next unless i % 4 == 0
        next if (i % 100 == 0) && (i % 400 != 0)
        puts i
    end
end
leap_year