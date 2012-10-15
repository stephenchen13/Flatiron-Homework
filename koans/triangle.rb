# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE
  raise TriangleError.new("Invalid length") if !valid_length?(a, b, c)
  raise TriangleError.new("Invalid triangle") if !valid_triangle?(a, b, c)
	return :equilateral if all_equal?(a, b, c)
	return :isosceles if any_equal?(a, b, c)
	return :scalene
end

def all_equal?(a, b, c)
  a == b && b == c
end

def any_equal?(a, b, c)
	a == b || a == c || b == c 
end

def valid_length?(*sides)
	valid = true
	sides.each do |side|
		valid = false if side <= 0
	end
	valid
end

def valid_triangle?(a, b, c)
	a + b > c && a + c > b && c + b > a
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
