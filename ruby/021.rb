#!/usr/bin/env ruby

require_relative '../lib/common'

MAX = 10_000
sum = 0

(1..MAX).each do |n|
  d1 = sum_of_proper_divisors(n)
  next unless d1 > n && d1 <= MAX
  d2 = sum_of_proper_divisors(d1)
  sum += n + d1 if d2 == n
end

puts sum
