class Triangle
  # write code here
   attr_accessor :sides
   @sides = []

   def initialize(num1, num2, num3)
    @sides = [num1, num2, num3]
    @sides.sort!
   end

   def kind
    if @sides.any? {|side| side <= 0} || ((@sides[0] + @sides[1]) <= @sides[2])
      raise TriangleError
    elsif @sides.uniq.length == 1
      :equilateral 
    elsif @sides.uniq.length == 2
      :isosceles
    else
      :scalene
    end

   end

   class TriangleError < StandardError
   end

end
