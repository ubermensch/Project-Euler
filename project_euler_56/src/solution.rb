require 'rubygems'
require 'pry'

# A googol (10 ^ 100) is a massive number: one followed by one-hundred zeros;
# 100 ^ 100 is almost unimaginably large: one followed by two-hundred zeros.
# Despite their size, the sum of the digits in each number is only 1.
# Considering natural numbers of the form, a ^ b, where a, b < 100, what is the maximum digital sum?

class Solution

  def self.solve!

    # First, calculate all combinations of a ^ b with a, b < 100
    nums = (1..100).to_a
    to_calc = []
    nums.dup.each do |i|
      nums.each do |j|
        to_calc << [i, j]
      end
    end
    calced = to_calc.collect do |c|
      puts '.'
      c[0] ** c[1]
    end

    # Now, add up the digit counts for each
    digit_count = calced.collect do |curr|
      curr_count = 0
      curr.to_s.each_char do |char|
        curr_count += char.to_i
      end
      curr_count
    end
    puts "Maximum digit count is #{digit_count.max}"
  end

end

if __FILE__ == $0
  Solution.solve!
end