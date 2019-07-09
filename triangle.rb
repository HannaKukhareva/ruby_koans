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

def triangle(length_a, length_b, length_c)
  a = length_a
  b = length_b
  c = length_c
  raise TriangleError unless (a > 0) && (b > 0) && (c > 0)
  raise TriangleError unless (a + b > c) && (a + c > b) && (b + c > a)

  return :equilateral if (a == c) && (a == b) && (b == c)
  return :isosceles if (a == b) || (b == c) || (a == c)

  :scalene
end

class TriangleError < StandardError
end
