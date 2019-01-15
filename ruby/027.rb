#!/usr/bin/env ruby

# Is it cheating to use a predefined table of primes?

require_relative 'lib/common'

def prime_run(a, b, l)
  n = 0

  # check the longest run + 1 first. No point checking others if
  # that's not prime
  #
  return 0 unless PRIMES[eqn(a, b, l + 1)]

  loop do
    return n unless PRIMES[eqn(a, b, n)]
    n += 1
  end
end

def eqn(a, b, n)
  n * n + a * n + b
end

PRIMES = load_primes

highest_ab = longest_run = 1

(-1000...1000).each do |a|
  (-1000..1000).each do |b|
    next if a.even? && b.even?
    l = prime_run(a, b, longest_run)
    next unless l > longest_run
    highest_ab = a * b
    longest_run = l
  end
end

puts highest_ab
