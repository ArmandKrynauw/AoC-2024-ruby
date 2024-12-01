require_relative 'utils'

def part1(input)
  pairs = input.split("\n").map { |l| l.split.map(&:to_i) }
  list1 = pairs.map(&:first).sort
  list2 = pairs.map(&:second).sort
  list1.zip(list2).map { |p| (p.first - p.second).abs }.sum
end

def part2(input)
  pairs = input.split("\n").map { |l| l.split.map(&:to_i) }
  list1 = pairs.map(&:first)
  list2 = pairs.map(&:second)
  tally = list2.tally
  list1.map { |v| v * (tally[v] || 0) }.sum
end
