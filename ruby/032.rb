#!/usr/bin/env ruby

require 'set'

def check_product(a, b, product)
  a.to_i * b.to_i == product.to_i
end

all_perms = '123456789'.chars.to_a.permutation.map(&:join)

hits = Set.new

all_perms.each do |p|
  m = p.match(/(\d{1})(\d{4})(\d{4})/)
  hits.<< m[3].to_i if check_product(m[1], m[2], m[3])

  m = p.match(/(\d{2})(\d{3})(\d{4})/)
  hits.<< m[3].to_i if check_product(m[1], m[2], m[3])
end

puts hits.sum
