class Triangle
  attr_accessor :side_1, :side_2, :side_3
  def initialize(side_1, side_2, side_3)
    @sides = []
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @sides.push(@side_1, @side_2, @side_3)
  end 
  
  def kind 
    if @sides.sort[0] + @sides.sort[1] > @sides.sort[2] && @sides.none?{|s| s == 0}
      if @side_1 == @side_2 && @side_2 == @side_3
        :equilateral 
      elsif @side_1 == @side_2 || @side_2 == @side_3 || @side_1 == @side_3 
        :isosceles
      else 
        :scalene 
      end 
    else 
      raise TriangleError
    end 
  end 
  
  class TriangleError
    puts "This is not a triangle."
  end 
end
