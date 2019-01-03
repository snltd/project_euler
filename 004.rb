#!/usr/bin/env ruby

r = Range.new(100, 999)
h = 0

r.each do |a|
  r.each do |b|
    p = a * b
    h = p if p.to_s == p.to_s.reverse && p > h
  end
end

puts h
