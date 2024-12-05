def parse_input(&block)
  File.read(ENV["INPUT"]).split("\n").map {
    |line| block.call(line.chomp) if line.chomp.length > 0
  }
end
