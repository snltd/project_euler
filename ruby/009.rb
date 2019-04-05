#!/usr/bin/env ruby

require_relative '../lib/common'

(1..1000).lazy.each do |a|
  (1..1000).lazy.each do |b|
    c = (a * a + b * b)**0.5
    next if c != c.to_i || a + b + c != 1000
    exit_ok (a * b * c).to_i
  end
end
