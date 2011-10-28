module PE9
  # Returns True if the given numbers form a pythagorean triplet (a^2 + b^2 = c^2) - False otherwise.
  def self.is_pythagorean_triplet?(a, b, c)
    if ((a*a + b*b) == c*c)
      return true
    end
    return false
  end
end