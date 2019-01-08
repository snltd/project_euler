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

def factorial(n)
  1.upto(n).inject(:*)
end
