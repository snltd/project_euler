#!/usr/bin/env ruby

def triangle_number(n)
  1.upto(n).inject(:+)
end

def factors(n)
  (1.upto(n ** 0.5).select { |d| (n % d).zero? }.size * 2) - 1
end

(1...).each do |n|
  tn = triangle_number(n)
  next unless factors(tn) > 500
  puts tn
  exit
end
