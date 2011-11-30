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
# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

def triangle(a, b, c)
  raise TriangleError,
    "Sorry, but I only accept integers" unless a.is_a?(Integer) and b.is_a?(Integer) and c.is_a?(Integer)
  raise TriangleError,
    "Sorry, but I cannot measure a negative or zero-length shape" if a < 1 or b < 1 or c < 1

  if a == b and b == c
    :equilateral
  elsif a == b or a == c or b == c
    :isosceles
  else
    :scalene
  end
end
