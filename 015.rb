#!/usr/bin/env ruby

# I didn't know how to do this. Learnt about the binomial
# coefficient.

def factorial(n)
  1.upto(n).inject(:*)
end

n = m = 20
puts factorial(m + n) / (factorial(n) * factorial(m))
