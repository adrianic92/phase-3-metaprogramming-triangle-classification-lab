class Triangle

  attr_accessor :one, :two, :three

  def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind

    if one <= 0 || two <= 0 || three <= 0 || one + two <= three || one + three <= two || two + three <= one
      raise TriangleError
    end

    if one == two && two == three
      return :equilateral
    elsif one == two || two == three || one == three
      return :isosceles
    else
      return :scalene
    end
  end

  class TriangleError < StandardError
    "Sorry, not a triangle..."
  end

end
