# Assignment

# write a true expression using ==
1 == 1
# write a false expression using ==
1 == 2
# write a true expression using !=
1 != 2
# write a false expression using !=
2 != 2

# Write an if statement with 3 different branches
# use !=, ==, and > in those branches
if (1 == 2)
	"1 == 2"
elsif (1 > 2)
	"1 > 2"
elsif (1 != 2)
	"1 != 2"
end
# Assign a variable based on the result of an if statement
if (true)
	number = 1
else
	number = 2
end
# Execute code based on the result of an if statement.
# conditionally run puts "Hello Class" if 1 < 2
if (1 < 2)
	puts "Hello Class"
end
# Try using an if statement at the end of an expression

# Write an if statement that negates the or condition to create a true return
if (!(false || false))
	"true"
end
# Write an if statement that users the and operator to create a false return
if (1 && 0)
	"false"
end
# Write a Case Statement that checks if a variable is a vowel
my_char = "a"
case my_char.downcase
when /[aeiou]/
	puts "vowel"
else
	puts "not vowel"
end
# Write that same case as an if statement
if (my_char =~ /[aeiou]/)
	puts "vowel"
else
	puts "not vowel"
end
# Write a Case statement that has at 4 branches and a default return
case my_char.downcase
when "a"
	"a"
when "b"
	"b"
when "c"
	"c"
when "d"
	"d"
else
	"not abcd"
end
# Assignment
# Write a while loop that runs exactly 5 times
x = 5
while (x > 0)
	x -= 1
	puts x
end

# Write a while loop that counts from 1 to 10 and puts all odd numbers
# => you can check if a number is odd by calling the odd? method on it.
# => 1.odd? will return true
i = 1
while (i <= 10)
	if (i.odd?)
		puts i
	end
	i += 1
end
# FizzBuzz - The Stairway to Heaven of Programmers

# Define the fizzbuzz method to do the following: 10pts
# Use the modulo % method (divisible by)
# 2 % 2 #=> true
# 1 % 2 #=> false
# If a number is divisible by 3, puts "Fizz".
# If a number is divisible by 5, puts "Buzz".
# If a number is divisible by 3 and 5, puts "FizzBuzz"

# Use if statements 2pts
# Use the && operator 3pts
def fizzbuzz(input)
	fb = ""
	if (input % 3 == 0)
		fb << "Fizz"
	end
	if (input % 5 == 0)
		fb << "Buzz"
	end
	fb = input.to_s unless !fb.empty?
	puts fb
	fb
end

# Write a loop that will group the numbers from 1 through 50
# by whether they fizz, buzz, or fizzbuzz - 10pts
fizz = []
buzz = []
fizzbuzzarr = []
(1..50).each do |i|
	fb = fizzbuzz(i).downcase
	if (fb == "fizz")
		fizz << i
	elsif (fb == "buzz")
		buzz << i
	elsif (fb == "fizzbuzz")
		fizzbuzzarr << i
	end		
end
puts fizz.to_s
puts buzz.to_s
puts fizzbuzzarr.to_s