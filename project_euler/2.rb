# https://projecteuler.net/problem=2

a, b, sum = 1, 1, 0

until a > 4_000_000
    a, b = b, a + b
    sum += a if a % 2 == 0
end

puts sum