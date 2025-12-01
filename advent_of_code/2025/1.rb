# input = File.readlines('1_example.txt').map(&:chomp)
input = File.readlines('1_input.txt').map(&:chomp)

def part_one(input)
    dial, zero_count = 50, 0

    input.each do |turn|
        direction = (turn[0] == 'L' ? -1 : 1)
        delta = turn[1..-1].to_i
        dial = (dial + (direction * delta)) % 100
        zero_count += 1 if dial == 0
    end

    return zero_count
end

def part_two(input)
    dial, zero_count = 50, 0

    input.each do |turn|
        direction = (turn[0] == 'L' ? -1 : 1)
        delta = turn[1..-1].to_i
        delta.times do
            dial = (dial + direction) % 100
            zero_count += 1 if dial == 0
        end
    end

    return zero_count
end

puts "Part 1: #{part_one(input)}"
puts "Part 2: #{part_two(input)}"