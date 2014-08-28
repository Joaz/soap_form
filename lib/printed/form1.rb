class Form1 < CrystalScad::Printed
	def initialize()
	end

	def part(show)
	  @sides = 6
	  @bottom = 4
	  @spacer = 2
		res = nil
    @x = 2
    @y = 3 
		
	  @y.times do |y|
   	  @x.times do |x|
   	  	res += cube([@soap_x=70,@soap_y=40,30]).translate(x:(@spacer+@soap_x)*x,y:(@spacer+@soap_y)*y)
	
	  	end
    end
    
    res += cube([@x*@soap_x+(@x-1)*@spacer,@y*@soap_y+(@y-1)*@spacer,18])
    res = res.color("lightblue").mirror(z:1).translate(z:30+@bottom)
    
    outer = cube([@x*(@spacer-1+@soap_x)+2*@sides,@y*(@spacer-1+@soap_y)+2*@sides,30+@bottom]).translate(x:-@sides,y:-@sides)
    outer -= res
    
      
    outer
    #res
	end

end	
