require 'date'
# Testing / Assertion
# Define a method that takes two values and compares them, printing pass or fail

# assert_equal(1,1) #=> pass
# assert_equal(2,1) #=> fail

def assert_equal(actual, expected)
	if (actual == expected)
		puts "pass"
	else
		puts "fail"
	end
end

# Use assert to test the following:

# define a method that creates an Array of Greetings for every person's name
# greetings(["Bob", "Tim", "Jake"]) #=> ["Hello Bob!", "Hello Tim!", "Hello Jake!"]

def greetings(names)
	names.map { |name|  
		"Hello #{name}!"
	}
end

names = ["Brad", "Tim", "Jake"]

assert_equal(
greetings(names),
["Hello Brad!", "Hello Tim!", "Hello Jake!"]
)

# define a method to sum the values of an array. Make this method defend against nils and
# other errors

def sum(numbers)
	total = 0
	numbers.each do |number|
		total += number if number.is_a? Integer
	end
	total
end

assert_equal sum([]), 0
assert_equal sum([1,2]), 3
assert_equal sum([1,nil,2]), 3
assert_equal sum([1, "2", 2]), 3

# define a method that returns comfortable for temps between 60-80, cold for below and hot
# for above.

def temperature_bot(temp)
	return "hot" if (temp > 80)
	return "cold" if (temp < 60)
	return "comfortable"
end

assert_equal temperature_bot(65), "comfortable"
assert_equal temperature_bot(70), "comfortable"
assert_equal temperature_bot(85), "hot"
assert_equal temperature_bot(30), "cold"

# define an object, Person, that has a birthdate and a name. Define a method for a person
# that returns their age.
class Person
	attr_accessor :birthday, :name
	def age 
		birthyear = @birthday.match(/\d{4}/).to_s
		DateTime.now.year - birthyear.to_i
	end
end
begin
person = Person.new
person.name = "Tim Berners-Lee"
person.birthday = "06/08/1955"
assert_equal person.name, "Tim Berners-Lee"
assert_equal person.birthday, "06/08/1955"
assert_equal person.age, 57

rescue => e
puts "Fail: #{e}"
end