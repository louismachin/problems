grid = File.readlines('./11.txt').map(&:chomp).map { |x| x.split(' ').map(&:to_i) }

max = 0

# horizontal pass
20.times { |y| 17.times { |x|
    max = [max, grid[y][x] * grid[y][x + 1] * grid[y][x + 2] * grid[y][x + 3]].max
} }

# vertical pass
20.times { |x| 17.times { |y|
    max = [max, grid[y][x] * grid[y + 1][x] * grid[y + 2][x] * grid[y + 3][x]].max
} }

# diagonal pass
17.times { |y| 17.times { |x|
    max = [max, grid[y].reverse[x] * grid[y + 1].reverse[x + 1] * grid[y + 2].reverse[x + 2] * grid[y + 3].reverse[x + 3]].max
    max = [max, grid[y][x] * grid[y + 1][x + 1] * grid[y + 2][x + 2] * grid[y + 3][x + 3]].max
} }

puts max