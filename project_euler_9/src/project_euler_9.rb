# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2

# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

class ProjectEuler9
  
  @@sum = 1000
  
  
  def initialize()
    @a, @b, @c = 0, 0, 0
    
    # This is basically a 3-loop, with c forming the outside, b the middle and a the inner loop
    # we want to find all the pyth. triplets in which no component is larger than 1000 by itself
    for c in 0..1000
        puts "[ c = #{c} ]\n" if [100, 200, 300, 400, 500, 600, 700, 800, 900].member? c
      for b in 0..c-1
        for a in 0..b-1
          @a, @b, @c = a, b, c if isPythagoreanTriplet(a, b, c) and a+b+c == 1000
        end
      end
    end
    puts "\nTriplet found: a = #{@a}, b = #{@b}, c = #{@c}\n"  
  end
  
  # Returns True if the given numbers form a pythagorean triplet (a^2 + b^2 = c^2) - False otherwise.
  def isPythagoreanTriplet(a, b, c)
    if ((a*a + b*b) == c*c)
      return true
    end
    return false
  end
end

runner = ProjectEuler9.new
