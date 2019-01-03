#!/usr/bin/env ruby
#

puts [3, 5].each_with_object([]) { |n, a|
  i = n
  while i < 1000
    a.<< i
    i += n
  end
}.uniq.inject(:+)
