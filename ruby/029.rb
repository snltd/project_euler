#!/usr/bin/env ruby

require 'set'

puts((2..100).each_with_object(Set.new) { |a, s|
  (2..100).each { |b| s.<< a**b }
}.size)
