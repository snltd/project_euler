#!/usr/bin/env ruby

# Starting with the number 1 and moving to the right in a clockwise direction
# a 5 by 5 spiral is formed as follows:
#
# 21 22 23 24 25
# 20  7  8  9 10
# 19  6  1  2 11
# 18  5  4  3 12
# 17 16 15 14 13
#
# It can be verified that the sum of the numbers on the diagonals is 101.
#
# What is the sum of the numbers on the diagonals in a 1001 by 1001 spiral
# formed in the same way?

def diagonal_sum(eqn, limit = 500)
  1.upto(limit).map { |n| eqn.call(n) }.sum
end

diagonals = [->(n) { (n * 2 + 1)**2 }, # up-right
             ->(n) { (n * 2)**2 - 2 * n + 1 }, # down-right
             ->(n) { (n * 2)**2 + 1 }, #down-left
             ->(n) { (n * 2)**2 + 2 * n + 1 }] # up-left

puts diagonals.map { |d| diagonal_sum(d) }.sum + 1
