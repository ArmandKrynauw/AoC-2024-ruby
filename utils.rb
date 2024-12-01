require 'active_support/core_ext/array'

def benchmark(&block)
  start = Process.clock_gettime(Process::CLOCK_MONOTONIC)
  result = block.call
  finish = Process.clock_gettime(Process::CLOCK_MONOTONIC)

  [result, finish - start]
end

def format_part(part_symbol)
  part_symbol.to_s.gsub(/part(\d)/, 'Part \1')
end

def get_input(day)
  File.read("inputs/#{day}")
end