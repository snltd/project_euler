R = [19, 17, 16, 15, 14, 13, 12, 11, 18, 20]

x = 2520

loop do
  unless R.any? { |n| (x % n) != 0 }
    puts x
    exit 0
  end

  x += 2520
end
