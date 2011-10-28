#
# PROJECT EULER PROBLEM NO. 25 - http://projecteuler.net/problem=25
#

# The Fibonacci sequence is defined by the recurrence relation:
#
# Fn = Fn1 + Fn2, where F1 = 1 and F2 = 1.
# Hence the first 12 terms will be:
#
# F1 = 1
# F2 = 1
# F3 = 2
# F4 = 3
# F5 = 5
# F6 = 8
# F7 = 13
# F8 = 21
# F9 = 34
# F10 = 55
# F11 = 89
# F12 = 144
# The 12th term, F12, is the first term to contain three digits.
#
# What is the first term in the Fibonacci sequence to contain 1000 digits?
#

module ProjectEuler25

  def self.solve
    # Use a cyclic array to find the first fibonacci term with 1000 digits.
    # We can't use a recursive method since this quickly takes an intractable amount
    # of time as n grows.
    cyclic = [1, 1, nil]
    index, count = 1, 2
    while (cyclic[index].to_s.size < 1000)
      index = (index + 1) % 3
      cyclic[index] = cyclic[(index + 2) % 3] + cyclic[(index + 1) % 3]
      count += 1
    end
    count
  end
end


if __FILE__ == $0
  puts "Solution to Project Euler no. 25 is : #{ProjectEuler25.solve}"
end