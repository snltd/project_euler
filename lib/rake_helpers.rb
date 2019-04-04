require 'open3'
require 'pathname'

task default: :run

class String
  def red
    "\033[31m#{self}\033[0m"
  end

  def green
    "\033[32m#{self}\033[0m"
  end
end


class Time
  def self.right_now
    Process.clock_gettime(Process::CLOCK_MONOTONIC)
  end
end

def run_prog(prog)
  t0 = Time.right_now
  answer, status = Open3.capture2(prog.to_s)
  duration = Time.right_now - t0
  puts format('%9s %25s   %ss', prog.basename, answer.strip.green,
              duration.round(6))
end
