def factor_tree(n, agg = Array(Int64).new)
  2.to_i64.upto((n**0.5).floor) do |p|
    return factor_tree(n / p, agg.push(p)) if (n % p).zero?
  end

  agg.push(n)
end

puts factor_tree(600_851_475_143).max
