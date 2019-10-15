#!/usr/bin/env ruby

# I like this one.

def diagonal_sum(eqn, limit = 500)
  1.upto(limit).map { |n| eqn.call(n) }.sum
end


diagonals = [->(n) { (n * 2 + 1)**2 }, # up-right
             ->(n) { (n * 2)**2 - 2 * n + 1 }, # down-right
             ->(n) { (n * 2)**2 + 1 },
             ->(n) { (n * 2)**2 + 2 * n + 1 }]

puts diagonals.map { |d| diagonal_sum(d) }.sum + 1
