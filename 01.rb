require_relative 'utils'

def part1(input)
  pairs = input.split("\n").map { |l| l.split.map(&:to_i) }
  list1 = pairs.map(&:first).sort
  list2 = pairs.map(&:second).sort
  list1.zip(list2).map { |p| (p.first - p.second).abs }.sum
end
