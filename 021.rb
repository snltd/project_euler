#!/usr/bin/env ruby

def proper_divisors(n)
  (1..n**0.5).select { |d| (n % d).zero? }.each_with_object([]) do |d, a|
    a.<< d
    d2 = n / d
    a.<< d2 unless d2 == d || d2 == n
  end.sort
end

def d_of_n(n)
  proper_divisors(n).inject(:+)
end

MAX = 10_000
sum = 0

(1..MAX).each do |n|
  d1 = d_of_n(n)
  next unless d1 > n && d1 <= MAX
  d2 = d_of_n(d1)
  sum += n + d1 if d2 == n
end

puts sum
