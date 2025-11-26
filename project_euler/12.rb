# https://projecteuler.net/problem=12

require 'prime'

n, triangle = 1, 1

loop do
    n += 1
    triangle += n
    div_count = Prime.prime_division(n).inject(1) { |prod, n| prod *= n[1] + 1 }
    if divisors_count(triangle) > 500
        puts triangle
        exit
    end
end