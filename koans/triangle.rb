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
  types = %i[equilateral isosceles scalene]
  number_of_sizes = sides.uniq.size
  types[number_of_sizes - 1]
end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end

def wrong_triangle?(sides)
  left, right, base = sides
  sum = left + right
  raise TriangleError.new, "Triangle sides can't be negative or zero." if sides.min <= 0
  raise TriangleError.new, "Triangles can't have one side greater than the sum of the otters two" if sum <= base
end
