class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :length_1, :length_2, :length_3

  def initalize(attributes)
    attributes.each {|key, value| self.send(("#{key}="), value)}
  end

  # Return the type of triangle
  # -> Equilateral => All sides equal
  # -> Isoceles    => Two sides same
  # -> Scalene     => All side different
  def kind
    
  end
end
