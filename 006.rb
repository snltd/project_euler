#!/usr/bin/env ruby

R = Range.new(1, 100)
puts R.inject(:+)**2 - R.inject(0) { |a, n| a + n**2 }
