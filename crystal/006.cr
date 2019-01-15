R = Range.new(1, 100)
puts R.sum**2 - R.reduce(0) { |a, n| a + n**2 }
