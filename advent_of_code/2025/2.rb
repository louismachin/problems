# input = File.readlines('2_example.txt')[0].chomp.split(',')
input = File.readlines('2_input.txt')[0].chomp.split(',')

input.map! { |range| a, b = range.split('-'); (a..b).to_a }

def repeated_twice?(id)
    return false if id.size % 2 == 1
    return true if id[0, id.size / 2] * 2 == id
    return false
end

def repeated?(id)
    return false if id.size < 2
    return true if id.chars.uniq.size == 1
    (2..id.size / 2).each do |n|
        next unless id.size % n == 0
        return true if id[0, n] * (id.size / n) == id
    end
    return false
end

def part_one(input)
    input.sum { |range| range.sum { |id| repeated_twice?(id) ? id.to_i : 0 } }
end

def part_two(input)
    input.sum { |range| range.sum { |id| repeated?(id) ? id.to_i : 0 } }
end

puts "Part 1: #{part_one(input)}"
puts "Part 2: #{part_two(input)}"