R = [19, 17, 16, 15, 14, 13, 12, 11, 18, 20]

x = 2520

loop do
  abort x.to_s unless R.any? { |n| (x % n) != 0 }
  x += 2520
end
