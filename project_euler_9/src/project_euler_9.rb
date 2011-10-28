require File.expand_path(File.dirname(__FILE__) + '/pe9')

# A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,

# a^2 + b^2 = c^2

# For example, 32 + 42 = 9 + 16 = 25 = 52.

# There exists exactly one Pythagorean triplet for which a + b + c = 1000.
# Find the product abc.

class ProjectEuler9

  @@sum = 1000


  def initialize()

  end

  def find_triplet()

    found_a, found_b, found_c = 0, 0, 0

    # This is basically a 3-loop, with c forming the outside, b the middle and a the inner loop
    # we want to find all the pyth. triplets in which no component is larger than 1000 by itself
    for c in 0..1000
        puts "[ c = #{c} ]\n" if [100, 200, 300, 400, 500, 600, 700, 800, 900].member? c
      for b in 0..c-1
        for a in 0..b-1
          found_a, found_b, found_c = a, b, c if PE9.is_pythagorean_triplet?(a, b, c) and a+b+c == 1000
        end
      end
    end
    puts "\nTriplet found: a = #{found_a}, b = #{found_b}, c = #{found_c}\n"
    { :a => found_a, :b => found_b, :c => found_c }
  end
end


# command-line guard
if __FILE__ == $0
  runner = ProjectEuler9.new
  triplet = runner.find_triplet
end

