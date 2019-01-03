#!/usr/bin/env ruby

# rubocop:disable Lint/ParenthesesAsGroupedExpression
puts (2**1000).to_s.split('').map(&:to_i).inject(:+)
# rubocop:enable Lint/ParenthesesAsGroupedExpression
