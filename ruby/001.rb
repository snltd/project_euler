#!/usr/bin/env ruby

require 'set'

LIMIT = 1000

def multiples_of(*int)
  int.each_with_object(Set.new) do |n, a|
    i = n
    while i < LIMIT
      a.<< i
      i += n
    end
  end
end

puts multiples_of(3, 5).sum
