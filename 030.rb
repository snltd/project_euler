#!/usr/bin/env ruby

# This could be faster. Caching the powers of 5 makes a small
# difference.
#
POWERS = (0..9).map { |n| n**5 }

def sum_of_digit_powers(m)
  m.to_s.split('').inject(0) { |a, d| a + POWERS[d.to_i] }
end

puts((2..6 * 9**5).select { |n| n == sum_of_digit_powers(n) }.inject(:+))
