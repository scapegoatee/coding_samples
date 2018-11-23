# This is how reduce works:

module Enumerable
    def reducer(sum)
        self.each do |var|
           sum = yield([sum, var])
        end
        sum
    end
end


puts (1..10).reduce(0) { |plum, y| plum + y }

puts (1..10).reduce(1) { |tum, z| tum + z }

puts (1..10).reducer(0) { |rum, x| rum + x }

puts (1..10).reducer(1) { |sum, x| sum + x }

puts ['j','o','h', 'n'].reducer('') { |chum, x| chum + x }