require_relative "../../util/parse_input.rb"

reports = parse_input { |line| line.split.map(&:to_i) }

def is_safe(report)
  dir = report[0] < report[1] ? -1 : 1
  report.each_cons(2).all? { |p|
    diff = p[0] - p[1]
    diff.abs >= 1 && diff.abs <= 3 && (diff.abs / diff) == dir
  }
end

puts reports.filter { |report|
  is_safe(report) || (0..report.count).any? { |i| is_safe(report.filter.with_index { |p, ii| ii != i }) }
} .count
