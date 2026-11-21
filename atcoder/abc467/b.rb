# https://atcoder.jp/contests/abc467/tasks/abc467_b

n = gets.chomp.to_i
shops = Array.new(n) {
    cost, paid, action = gets.chomp.split(' ')
    [cost.to_i, paid.to_i, action]
}

ideal, actual = 0, 0

for cost, paid, action in shops do
    change = paid - cost
    ideal += change
    actual += change if action == 'take'
end

puts ideal - actual