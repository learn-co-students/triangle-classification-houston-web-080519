class Triangle
  attr_reader :a, :b, :c
  def initialize(length1, length2, length3)
    @a = length1
    @b = length2
    @c = length3
  end
  
  def kind
    check_triangle
    if @a == @b && @b == @c
      return :equilateral
    elsif @a == @b || @b == @c || @a == @c 
      return :isosceles
    else
      return :scalene
    end
  end

  def check_triangle
    real_triangle = [(@a + @b > @c), (@a + @c > @b), (@b + @c > @a)]
    [@a, @b, @c].each do |side|
      real_triangle << false if side <= 0 
    raise TriangleError if real_triangle.include?(false)
    end 
  end
    class TriangleError < StandardError
      # triangle error code
      puts "Damn"
    end
    
end
