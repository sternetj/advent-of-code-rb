require_relative "../../util/parse_input.rb"

input = parse_input { |line| line.split('   ').map(&:to_i) }

occurrences = input.transpose[1].tally

puts input.transpose[0].map { |v| v * (occurrences[v] || 0) }.sum
