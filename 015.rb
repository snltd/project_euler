#!/usr/bin/env ruby

# I didn't know how to do this. Learnt about the binomial
# coefficient.
#
require_relative 'lib/common'

n = m = 20
puts factorial(m + n) / (factorial(n) * factorial(m))
