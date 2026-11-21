# https://atcoder.jp/contests/abc467
# https://atcoder.jp/contests/abc467/tasks/abc467_a

height, weight = gets.chomp.split(' ').map(&:to_i)
puts height * height <= weight * 400 ? 'Yes' : 'No'