#!/usr/bin/env ruby

require 'set'
require_relative '../lib/common'

def abundant?(n)
  sum_of_proper_divisors(n) > n
end

def all_sums(nums)
  Set.new.tap do |s|
    nums.each.with_index { |a, i| nums[i..-1].each { |n| s.<< a + n } }
  end
end

LIMIT = 28_122

abundant_numbers = (12..LIMIT).select { |n| abundant?(n) }

puts (Set.new(1..LIMIT) - all_sums(abundant_numbers)).sum
