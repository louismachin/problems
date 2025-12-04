# input = File.readlines('4_example.txt').map(&:chomp).map(&:chars)
input = File.readlines('4_input.txt').map(&:chomp).map(&:chars) 

def grid_cell(grid, x, y)
    return nil if (x < 0) || (x > grid[0].size - 1)
    return nil if (y < 0) || (y > grid.size - 1)
    return grid[y][x]
end

def part_one(input)
    result = 0
    input.each_with_index do |row, y|
        row.each_with_index do |cell, x|
            next unless cell == '@'
            neighbors = [
                [x - 1, y + 1], [x - 1, y], [x - 1, y - 1], [x, y + 1],
                [x, y - 1], [x + 1, y + 1], [x + 1, y], [x + 1, y - 1]
            ].count { |_x, _y| grid_cell(input, _x, _y) == '@' }
            result += 1 if neighbors < 4
        end
    end
    return result
end

def part_two(input)
    result = 0
    loop do
        to_remove = []
        input.each_with_index do |row, y|
            row.each_with_index do |cell, x|
                next unless cell == '@'
                neighbors = [
                    [x - 1, y + 1], [x - 1, y], [x - 1, y - 1], [x, y + 1],
                    [x, y - 1], [x + 1, y + 1], [x + 1, y], [x + 1, y - 1]
                ].count { |_x, _y| grid_cell(input, _x, _y) == '@' }
                to_remove << [x, y] if neighbors < 4
            end
        end
        break if to_remove.empty?
        result += to_remove.size
        to_remove.each { |x, y| input[y][x] = 'X' }
    end
    return result
end

puts "Part 1: #{part_one(input)}"
puts "Part 2: #{part_two(input)}"