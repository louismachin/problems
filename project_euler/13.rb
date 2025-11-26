# https://projecteuler.net/problem=13

nums = File.readlines('./13.txt').map(&:chomp).map(&:to_i)

puts nums.sum.to_s[0, 10]

# Work out the first ten digits of the sum of the following one-hundred 50-digit numbers.