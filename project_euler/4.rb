# https://projecteuler.net/problem=4

max = 0

(111..999).each do |a|
    (111..999).each do |b|
        product = a * b
        next unless product.to_s == product.to_s.reverse
        max = [max, product].max
    end
end

puts max