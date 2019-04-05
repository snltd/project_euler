# Methods which get used in multiple problems
#
require 'pathname'

RESOURCE_DIR = Pathname.new(__FILE__).dirname.parent + 'resources'

# like Kernel#abort, but exit 0
#
def exit_ok(msg)
  puts msg
  exit 0
end

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

# Convenience methods for numbers
#
class Numeric
  def factorial
    if zero?
      1
    elsif positive?
      1.upto(self).inject(:*)
    end
  end
end

# Convenience methods for integers
#
class Integer
  # requires the prime numbers loaded into PRIMES
  #
  def prime?
    PRIMES[self]
  end
end

# Load primes into a numberline (i.e. an array of true/false). This
# is much quicker to check than an array of the primes themselves.
#
def load_primes
  p = IO.read(RESOURCE_DIR + 'primes.txt').each_line.map(&:to_i)
  ([false] * p.max).tap { |nl| p.each { |n| nl[n] = true } }
end

def load_primes_as_arr
  IO.read(RESOURCE_DIR + 'primes.txt').each_line.map(&:to_i)
end
