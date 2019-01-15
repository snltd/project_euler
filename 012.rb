#!/usr/bin/env ruby

def triangle_number(n)
  1.upto(n).sum
end

# There must be far faster ways to implement this.
#
def divisors(n)
  (1.upto(n ** 0.5).select { |d| (n % d).zero? }.size * 2) - 1
end

(1...).lazy.each do |n|
  tn = triangle_number(n)
  next unless divisors(tn) > 500
  puts tn
  exit
end
