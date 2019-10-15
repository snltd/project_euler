#!/usr/bin/env ruby

puts 1.upto(100).inject(:*).to_s.split('').map(&:to_i).sum
