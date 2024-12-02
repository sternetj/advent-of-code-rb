script_to_run = ARGV[0]
input_file_name = "#{ARGV[1] || "input"}.txt"

if script_to_run.nil?
  puts "Must provide a script identifier [year?:day?:puzzle] (ex. 2018:3:1, 3:1, 1)"
  exit
end

puzzle, day, year = script_to_run.reverse().split(':').map(&:to_i)

folder = "./src/#{year || Time.now.year}/day_#{day || Time.now.day}"

ENV['INPUT'] ||= "#{folder}/#{input_file_name}"

script_to_run = "#{folder}/index_#{puzzle}.rb"

puts "Running #{script_to_run}"
require script_to_run
