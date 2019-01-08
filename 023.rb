#!/usr/bin/env ruby

require 'set'
require_relative 'lib/common'

def abundant?(n)
  sum_of_proper_divisors(n) > n
end

def all_sums(nums)
  Set.new.tap do |s|
    nums.each.with_index { |a, i| nums[i..-1].each { |n| s.<< a + n } }
  end
end

abundant_numbers = (12..28122).select { |n| abundant?(n) }

puts (Set.new(1..28122) - all_sums(abundant_numbers)).inject(:+)
