require_relative "../../util/parse_input.rb"

input = parse_input { |line| line.split.map(&:to_i).each_cons(2).map(&:itself) }

puts input.filter { |pairs|
  dir = pairs[0][0] < pairs[0][1] ? -1 : 1
  pairs.all? { |p| 
    diff = p[0] - p[1]
    diff.abs >= 1 && diff.abs <= 3 && (diff.abs / diff) == dir
  }
} .count
