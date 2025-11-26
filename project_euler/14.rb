# https://projecteuler.net/problem=14

known = { 1 => 1 }

def next_collatz(n)
    return (n % 2 == 0) ? (n / 2) : (3 * n + 1)
end

max_n, max_chain = 0, 0

(1..1_000_000).each do |n|
    start = n
    chain = 0
    until known[n]
        chain += 1
        n = next_collatz(n)
    end
    chain = chain + known[n]
    known[start] = chain
    max_n, max_chain = start, chain if chain > max_chain  
end

puts max_n