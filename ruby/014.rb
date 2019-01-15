#!/usr/bin/env ruby

def collatz(n)
  seq = [n]

  until n == 1
    n = n.even? ? n / 2 : 3 * n + 1
    seq.<< n
  end

  seq
end

longest = [0, 0]

1.upto(999_999).each do |n|
  len = collatz(n).length
  longest = [len, n] if len > longest[0]
end

puts longest[1]
