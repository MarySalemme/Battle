class Player

attr_reader :name, :hit_points

 def initialize(name, hit_points = 60)
   @name = name
   @hit_points = hit_points
 end

 def reduce_points
    @hit_points -= 10
  end
end
