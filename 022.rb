#!/usr/bin/env ruby

require 'pathname'

ALPHABET = ('@'..'Z').to_a.freeze

def name2score(name)
  name.each_char.map { |l| ALPHABET.index(l) }.sum
end

f = IO.read(Pathname.new(__FILE__).dirname + 'resources' + 'p022_names.txt')
list = f.delete('"').split(',').sort
sum = 0
list.each.with_index(1) { |name, i| sum += i * name2score(name) }
puts sum
