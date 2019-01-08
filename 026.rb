#!/usr/bin/env ruby

# Couldn't do this one. Chased down many blind alleys with
# BigDecimal and trying to trick Ruby into giving me more decimal
# precision than it wanted to.
#
# This solution is genius IMO.  mathblog.dk again.

def seqlength(n)
  seen = []
  m = 1

  1.upto(n) do |i|
    rem = m % n
    return i if seen.include?(rem)
    seen.<< rem
    m = 10 * rem
  end
end

max = 0
(1..999).each { |n| max = n if seqlength(n) > max }
puts max
