#!/usr/bin/env ruby

(1..1000).each do |a|
  (1..1000).each do |b|
    c = (a * a + b * b)**0.5
    next if c != c.to_i || a + b + c != 1000
    puts(a * b * c).to_i
    exit
  end
end
