#!/usr/bin/env ruby

R = [19, 17, 16, 15, 14, 13, 12, 11, 18, 20].freeze

x = 2520

loop do
  break unless R.any? { |n| (x % n) > 0 }
  x += 2 # the answer can't be odd
end

puts x
