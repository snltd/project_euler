#!/usr/bin/env ruby

NUMS = %w[one two three four five six seven eight nine ten eleven twelve
          thirteen fourteen fifteen sixteen seventeen eighteen nineteen]

TENS = %w[twenty thirty forty fifty sixty seventy eighty ninety].freeze

def oneto99
  TENS.each_with_object(NUMS) do |t, a|
    a.<< t
    NUMS.take(9).each { |u| a.<< format('%s-%s', t, u) }
  end
end

def numbers_in_words
  NUMS.take(9).each_with_object(ONETO99.dup) do |h, a|
    a.<< format('%s hundred', h)
    ONETO99.each { |n| a.<< format('%s hundred and %s', h, n) }
  end.<< 'one thousand'
end

ONETO99 = oneto99.freeze

puts numbers_in_words.map { |w| w.delete(' -').length }.sum
