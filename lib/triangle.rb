class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :length_1, :length_2, :length_3

  def initalize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
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
