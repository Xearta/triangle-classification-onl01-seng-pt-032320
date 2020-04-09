class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :side1, :side2, :side3

  def initalize(side1,side2,side3)
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


    if side1 == side2 && side2 == side3
      return :equilateral
    elsif side1 == side2 || side1 == side3 || side2 == side3
      return :isosceles
    else
      return :scalene
    end
  end

  #
  # ef get_married(person)
  #   self.partner = person
  #   if person.class != Person
  #     begin
  #       raise PartnerError
  #     rescue PartnerError => error
  #       puts error.message
  #     end
  #   else
  #     person.partner = self
  #   end
  # end


  class TriangleError < StandardError
    def message
      "ERROR: The Triangle violates the triangle inequality rules!"
    end
  end
end
