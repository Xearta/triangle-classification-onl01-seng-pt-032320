require 'pry'

class Triangle
  def initialize(side1,side2,side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  # Return the type of triangle
  # -> Equilateral => All sides equal
  # -> Isoceles    => Two sides same
  # -> Scalene     => All side different

  # ERROR IF:
  # -> 0, 0, 0
  # -> 3, 4, -5
  # -> SUM of two sides are less than the greatest side
  def kind
    


    if (@side1 == @side2) && (@side2 == @side3)
       :equilateral
    elsif (@side1 == @side2) || (@side1 == @side3) || (@side2 == @side3)
       :isosceles
    else
       :scalene
    end
  end

  class TriangleError < StandardError
    def message
      "ERROR: The Triangle violates the triangle inequality rules!"
    end
  end
end
