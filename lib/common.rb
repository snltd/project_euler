# Methods which get used in multiple problems

def proper_divisors(n)
  (1..n**0.5).select { |d| (n % d).zero? }.each_with_object([]) do |d, a|
    a.<< d
    d2 = n / d
    a.<< d2 unless d2 == d || d2 == n
  end.sort
end

def sum_of_proper_divisors(n)
  proper_divisors(n).inject(:+)
end

class Numeric
  def factorial
    if self.zero?
      1
    elsif self.positive?
      1.upto(self).inject(:*)
    else
      nil
    end
  end
end
