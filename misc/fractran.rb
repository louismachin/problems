FRACTIONS = [
    [17, 91],
    [78, 85],
    [19, 51],
    [23, 38],
    [29, 33],
    [77, 29],
    [95, 23],
    [77, 19],
    [ 1, 17],
    [11, 13],
    [13, 11],
    [15,  2],
    [ 1,  7],
    [55,  1],
]

def step(n)
    FRACTIONS.each do |num, den|
        return n / den * num if n % den == 0
    end
    nil
end

def power_of_two?(n)
    n > 0 && (n & (n - 1)) == 0
end

n = 2
loop do
    n = step(n) || break
    puts n.bit_length - 1 if power_of_two?(n)
end