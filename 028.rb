#!/usr/bin/env ruby

# I like this one.

def diagonal_sum(eqn, limit = 500)
  1.upto(limit).inject { |a, n| a + eqn.call(n) }
end

diagonals = [->(n) { (n * 2 + 1)**2 },
             ->(n) { (n * 2)**2 - 2 * n + 1 },
             ->(n) { (n * 2)**2 + 1 },
             ->(n) { (n * 2)**2 + 2 * n + 1 }]

puts diagonals.inject(0) { |a, d| a + diagonal_sum(d) }
