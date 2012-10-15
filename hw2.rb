# Write a Case Statement that checks if a variable is a vowel
# Write that same case as an if statement
# Write a Case statement that has at 4 branches and a default return
def is_vowel?(letter)
case letter.downcase
when "a"
	true
when "e"
	true
when "i"
	true
when "o"
	true
when "u"
	true
else
	false
end
end

# Write a while loop that runs exactly 5 times
# Write a while loop that counts from 1 to 10 and puts all odd numbers
# => you can check if a number is odd by calling the odd? method on it.
# => 1.odd? will return true
i = 0
while (i < 5) 
	i += 1
end
j = 0
while (j < 10)
	puts j if j.odd?
	j += 1
end

# Construct an array with your favorite foods. It should have at least
# 5 elements.
# puts your most favorite food out of that array
foods = ["Pizza", "Steak", "Ramen", "Chicken", "Babies"]
foods[4]

# Construct an array with the colors of the rainbow (ROYGBIV)
# Slice the colors Red, Orange, and Yellow out of the array
colors = %w("Red Orange Yellow Green Blue Indigo Violet")
colors.slice(0, 3)
# Start with an empty array and then fill the second and 6th position
[]
#
# Create a variable that stores your name as a string.
# Send that variable (string object) the upcase method.
# Try to slice the middle letter of your name out of the string.
# http://ruby-doc.org/core-1.9.3/String.html#method-i-slice
name = "stephen chen".upcase
name.slice(6, 1)

# Chain at least 5 method calls to an object.
# Reduce this operation one chain at a time.
# Example:

# Full Chain:
puts "start".reverse.slice(0,2).concat("uth").capitalize
# trats
#tr
#truth
#Truth

# At any given point in the chain, there is an evaluation
# that then receives the next method call

# Try to use as many of the string methods as possible.
# Literally, try to write a ruby script that demonstrates the usage of
# every string method
puts "a".chomp.downcase.upcase.insert(0, "b").reverse.slice(0,1).strip.swapcase.succ.gsub("a", "b").sub("a", "b")
# Iterate through all the letters in your name outputing all vowels.
"stephen chen".split(//).each do |letter|
	puts letter if is_vowel?(letter)
end
# Given this List of Songs, Construct Arrays by Artist and Album
# Hint: Make use of the split() String Method
# http://www.ruby-doc.org/core-1.9.3/String.html#method-i-split

# Simple Example of Data Parsing

songs = [
"The Magnetic Fields - 69 Love Songs - Parades Go By",
"The Magnetic Fields - Get Lost - Smoke and Mirrors",
"The Magnetic Fields - Get Lost - You, Me, and the Moon",
"The Magnetic Fields - 69 Love Songs - The Book of Love",
"Neutral Milk Hotel - In An Aeroplane Over the Sea - Holland 1945",
"Neutral Milk Hotel - In An Aeroplane Over the Sea - The King of Carrot Flowers"
]

puts songs.sort { |s1, s2|
	artist1, album1 = s1.split(" - ")
	artist2, album2 = s2.split(" - ")

	if (artist1 == artist2)
		album1 <=> album2
	else
		artist1 <=> artist2
	end
}
# Organize these songs by artist and album then output them in order

# Example Output
# "The Magnetic Fields - Get Lost - Smoke and Mirrors",
# "The Magnetic Fields - Get Lost - You, Me, and the Moon",
# "The Magnetic Fields - 69 Love Songs - The Book of Love",
# "The Magnetic Fields - 69 Love Songs - Parades Go By",
# "Neutral Milk Hotel - In An Aeroplane Over the Sea - Holland 1945",
# "Neutral Milk Hotel - In An Aeroplane Over the Sea - The King of Carrot Flowers"
