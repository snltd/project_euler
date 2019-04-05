#!/usr/bin/env ruby

require_relative '../lib/common'

R = [19, 17, 16, 15, 14, 13, 12, 11, 18, 20].freeze

x = 2520

loop do
  exit_ok x.to_s unless R.any? { |n| (x % n).positive? }
  x += 2520
end
