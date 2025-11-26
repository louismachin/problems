# https://projecteuler.net/problem=15

def factorial(n)
    (1..n).inject(:*)
end

def combinations(n, r)
    # n C r = n ! / r * (n - r) !
    factorial(n) / (factorial(r) * factorial(n - r))
end

puts combinations(40, 20)