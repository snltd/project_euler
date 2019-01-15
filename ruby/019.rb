#!/usr/bin/env ruby

N_DAYS = [31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31].freeze
L_DAYS = [31, 29, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31].freeze

def leap_year?(y)
  return true if (y % 400).zero?
  return false if (y % 100).zero?
  (y % 4).zero?
end

# Make a list of first days of the month
#
first_days = (1901..2000).each_with_object([1]) do |y, a|
  months = leap_year?(y) ? L_DAYS : N_DAYS
  months.each { |d| a.<< a[-1] + d }
end

puts first_days.select { |d| ((d - 1) % 7).zero? }.size
