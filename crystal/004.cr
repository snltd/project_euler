highest = 0

(100..999).each do |a|
  (100..999).each do |b|
    p = a * b
    s = p.to_s
    highest = p if p > highest && s == s.reverse
  end
end

puts highest
