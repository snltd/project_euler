#!/usr/bin/env ruby

R = [19, 17, 16, 15, 14, 13, 12, 11, 18, 20].freeze

x = 2520

loop do
  abort x.to_s unless R.any? { |n| (x % n).positive? }
  x += 2520
end
