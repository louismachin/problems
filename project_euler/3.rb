# https://projecteuler.net/problem=3

def prime?(n)
    return false if n < 2
    return true if n == 2
    return false if n % 2 == 0
    (3..Math.sqrt(n)).step(2).none? { |i| n % i == 0 }
end

def prime_factors(n)
    (2...Math.sqrt(n).ceil).select { |m| (n % m == 0) && prime?(m) }
end

puts prime_factors(600851475143).max