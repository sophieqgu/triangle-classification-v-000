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
    if @side_1 + @side_2 > @side_3 && 
      :equilateral if @side_1 == @side_2 == @side_3
    
end
