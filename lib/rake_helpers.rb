require 'open3'
require 'pathname'

LIBDIR = Pathname.new(__FILE__).dirname

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

def problem_number(prog)
  prog.basename.to_s.split('.').first.to_i
end

def run_prog(prog)
  t0 = Time.right_now
  answer, status = Open3.capture2(prog.to_s)
  duration = Time.right_now - t0

  right_answer = ANSWERS[problem_number(prog)]

  formatted_answer = if answer.to_f == right_answer
                       answer.strip.green
                     else
                       answer.strip.red
                     end

  puts format('%9s %25s   %ss', prog.basename, formatted_answer,
              duration.round(6))
end

# @return [Array] answers to problems
#
def answers
  IO.read(LIBDIR + 'Answers.txt').each_line.with_object([]) do |l, a|
    next unless l.start_with?('Problem')
    _, num, answer = l.strip.split(/[: ]+/)
    a[num.to_i] = answer.to_f
  end
end

ANSWERS = answers

