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
  sides = [a, b, c].sort
  # TriangleError if one side <= 0
  raise TriangleError if sides[0] <= 0
  # TriangleError if any two sides are less than the third side
  raise TriangleError if sides[0] + sides[1] <= sides[2]

  return :equilateral if sides[0] == sides[1] && sides[1] == sides[2]
  return :isosceles if sides[0] == sides[1] || sides[1] == sides[2] || sides[1] == sides[3]
  return :scalene if sides[0] != sides[1] && sides[1] != sides[2] && sides[1] != sides[3]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
