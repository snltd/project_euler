#!/usr/bin/env ruby

# I gave up on this one. Couldn't quite nail the algorithm for the
# next lexicograpic number. Learnt more about combinatorics digging
# for the solution, and in this exercise, new knowledge gained >>
# old knowledge applied. (I was on to the right way of doing it,
# just didn't know quite enough.). The solution is to chop away n!
# chunks of the million, moving along the number.

require_relative '../lib/common'

numbers = ('0'..'9').to_a
N = numbers.size
perm_num = ''
remain = 1_000_000 - 1

1.upto(N) do |i|
  j = remain / (N - i).factorial
  remain = remain % (N - i).factorial
  perm_num.<< numbers[j]
  numbers.delete_at(j)
  break if remain.zero?
end

puts perm_num + numbers.join
