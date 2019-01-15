LIMIT = 4_000_000

def even_fibsum(t1 = 1, t2 = 2, sum = 0)
  sum += t1 if t1.even?
  t3 = t1 + t2
  return sum if t2 > LIMIT
  even_fibsum(t2, t3, sum)
end

puts even_fibsum
