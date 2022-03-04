# frozen_string_literal: true

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

def triangle(base, left_side, right_side)
  # WRITE THIS CODE
  sides = [base, left_side, right_side].sort
  wrong_triangle?(sides)
  return :equilateral if equilateral?(sides)
  return :scalene if scalene?(sides)

  :isosceles
end

def equilateral?(sides)
  sides[0] == sides[1] && sides[0] == sides[2]
end

def scalene?(sides)
  sides[0] != sides[1] && sides[0] != sides[2] && sides[1] != sides[2]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

def wrong_triangle?(sides)
  sum = sides[0] + sides[1]
  raise TriangleError.new, "Triangle sides can't be negative or zero." if sides[0] <= 0
  raise TriangleError.new, "Triangles can't have one side greater than the sum of the otters two" if sum <= sides[2]
end
