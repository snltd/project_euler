#!/usr/bin/env ruby

def factor_tree(n, agg = [])
  2.upto((n**0.5).floor) do |p|
    return factor_tree(n / p, agg.push(p)) if (n % p).zero?
  end

  agg.push(n)
end

puts factor_tree(600_851_475_143).max
