require_relative "../../util/parse_input.rb"

input = parseInput { |line| line.split('   ').map(&:to_i) }

puts input.transpose.map(&:sort).transpose.map { |row| row.inject(:-).abs }.sum
