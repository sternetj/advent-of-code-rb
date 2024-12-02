# advent-of-code-rb

Contains Ruby solutions for [https://adventofcode.com](https://adventofcode.com) problems by year/day.

# Getting Started

- Clone the repo
- Run a specific day's puzzle with `ruby start.rb 2018:1:2` to run the second problem of the first day of 2018.
  - The script can also assume the current year and day if desired so `ruby start.rb 1:2` is equivalent to `ruby start.rb currentYear:1:2` and `ruby start.rb 2` is equivalent to `ruby start.rb currentYear:currentDay:2`
  - The script can also inject the input file name. Running `ruby start.rb 2 test` will set the `INPUT` environment variable to `test.txt` and will run the `currentYear/currentDay/index-2.ts` script file.
