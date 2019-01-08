#!/usr/bin/env ruby

def fib(m = 1, n = 0, index = 1)
  sum = m + n
  return index.to_s if sum.to_s.size > 999
  fib(n, sum, index += 1)
end

puts fib
