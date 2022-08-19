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

    # if @num1 > 0 && @num2 > 0 && @num3 > 0 
    #   if (@num1 + @num2) < @num3 || (@num2 + @num3) < @num1 || (@num3 + @num1) < @num2
    #     if @num1==@num2 && @num1==@num3
    #       equilateral
    #     elsif @num1==@num2 || @num1==@num3 || @num2==@num3
    #       isosceles
    #     else
    #       scalene
    #     end
    #   else
    #     raise TriangleError
    #   end
    # else
    #   raise TriangleError
    # end
   end

   class TriangleError < StandardError
   end

end
