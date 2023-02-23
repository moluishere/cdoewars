# Return an array containing the numbers from 1 to N, where N is the parametered value.
#
# Replace certain values however if any of the following conditions are met:
#
# If the value is a multiple of 3: use the value "Fizz" instead
# If the value is a multiple of 5: use the value "Buzz" instead
# If the value is a multiple of 3 & 5: use the value "FizzBuzz" instead
# N will never be less than 1.
#
# Method calling example:
#
# fizzbuzz(3) -->  [1, 2, "Fizz"]

def fizzbuzz(n)
  (1..n).map do |num|
     if num % 3 == 0 && num % 5 == 0 then "FizzBuzz"
     elsif num % 3 == 0 then "Fizz"
     elsif num % 5 == 0 then "Buzz"
     else num
     end
   end
end

puts fizzbuzz(3)
