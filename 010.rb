#!/usr/bin/env ruby

def primes_upto(max)
  (0..max).lazy.to_a.tap do |line|
    (2..(max**0.5).round + 1).each do |n|
      (2 * n..max).step(n) { |v| line[v] = nil if line[v] }
    end
  end.drop(2).reject(&:nil?)
end

puts primes_upto(2_000_000).sum
