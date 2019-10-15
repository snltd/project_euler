#!/usr/bin/env ruby
#
# Multiples of 3 and 5
# Problem 1
#
# If we list all the natural numbers below 10 that are multiples of
# 3 or 5, we get 3, 5, 6 and 9. The sum of these multiples is 23.
#
# Find the sum of all the multiples of 3 or 5 below 1000.

require 'set'

threes = Set.new((0...1000).step(3))
fives  = Set.new((0...1000).step(5))
puts (threes + fives).sum
