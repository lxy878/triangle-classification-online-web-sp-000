class Triangle
  # write code here
  def initialize(a,b,c)
    @a=a
    @b=b
    @c=c
  end

  def kind
    begin
      if @a<=0 or @b<=0 or @c<=0
        raise TriangleError
      end

      if @a==@b and @b==@c
        :equilateral
      elsif @a==@b or @b==@c or @a==@c

        :isosceles
      else

        :scalene
      end
    rescue TriangleError => error
      puts error.messesge
    end
  end

  class TriangleError < StandardError
    def messesge
      "error"
    end
  end
end
