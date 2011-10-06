# A firecracker explodes at a height of 100 m above level ground. It breaks into a 
# large number of very small fragments, which move in every direction; all of them 
# have the same initial velocity of 20 m/s.

# We assume that the fragments move without air resistance, in a uniform gravitational field with g=9.81 m/s2.

# Find the volume (in m3) of the region through which the fragments move before reaching the ground. 
# Give your answer rounded to four decimal places.





class ProjectEuler317
  
  # height at which the firecracker explodes
  @@initial_s = 100
  
  # Force due to gravity (in m/s^2)
  @@gravity = 9.81
  
  # initial speed of the fragments (in m/s)
  @@initial_fragment_v = 20

  def initialize()
    @volume = nil
    
    # start by working out the time to hit the ground for the fragment that goes straight up and the one that goes straight down.
    # these will be the bounds.
    max_time = timeToHitGround(-@@initial_fragment_v)
    min_time = timeToHitGround(@@initial_fragment_v)
    
    # time taken for the horizontal fragments (the ones that fly directly outwards in a circle around the firecracker)
    horizontal_time = timeToHitGround(0)
    
    
    # This is how long the horizontal velocity of these gets to act (i.e the radius of the hemisphere circumscribed by
    # these fragments)
    radius = horizontal_time * @@initial_fragment_v
    puts "Radius of hemisphere on ground = #{radius}\n"
    
    # Find out how far it travels up from the explosion point (i.e final velocity is 0, initial is -20)
    # v^2 = u^2 + 2as => 0 = (-20)^2 + 2 * a * s => -(20^2) = 2as =>  s = -(20^2) / 2a
    displacement = (-(@@initial_fragment_v * @@initial_fragment_v)) / (2 * @@gravity)
    # Absolute value
    displacement = displacement.abs
    puts "Distance heighest piece travels up from explosion point = #{displacement}\n"
    major_axis = displacement + @@initial_s
    puts "Major axis (height from top point to ground) = #{major_axis}\n"
    puts "Minor axis (radius of ground hemisphere) = #{radius}\n"
    
    
    
 end
  
  # Returns the time taken for a fragment to hit the ground, given initial vertical velocity. Positive means
  # downwards velocity, negative means upwards.
  def timeToHitGround(initial_vertical_v)
    # newton's formula : v^2 = u^2 + 2as
    square_final_v = (initial_vertical_v * initial_vertical_v) + (2 * @@gravity * @@initial_s)
    final_v = Math.sqrt(square_final_v)
    
    # v = u + at
    time = (final_v - initial_vertical_v) / @@gravity
    puts "[ time to hit the ground : { initial vertical velocity : #{initial_vertical_v}, time taken : #{time} } ]\n"
    return time 
    
  end
  
  
end

runner = ProjectEuler317.new
