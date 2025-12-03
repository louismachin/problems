# input = File.readlines('3_example.txt').map(&:chomp).map(&:chars)
input = File.readlines('3_input.txt').map(&:chomp).map(&:chars)

def part_one(input)
    input.sum { |line| line.combination(2).uniq.map(&:join).map(&:to_i).max }
end

def part_two(input)
    input.sum do |line|
        stack, digits_to_remove = [], line.size - 12
        line.map(&:to_i).each do |digit|
            while (stack.any? && (stack.last < digit) && (digits_to_remove > 0)) do
                stack.pop
                digits_to_remove -= 1
            end
            stack << digit
        end
        stack[0, 12].map(&:to_s).join.to_i
    end
end

puts "Part 1: #{part_one(input)}"
puts "Part 2: #{part_two(input)}"