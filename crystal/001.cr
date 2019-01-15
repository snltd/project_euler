require "set"

LIMIT = 1000

def multiples_of(*int)
  int.each_with_object(Set(Int32).new) do |n, a|
    i = n
    while i < LIMIT
      a.<< i
      i += n
    end
  end
end

puts multiples_of(3, 5).sum
