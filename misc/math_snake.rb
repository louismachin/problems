# https://www.reddit.com/r/askmath/comments/1o3qobr/how_to_solve_this_cross_math/
# https://www.youtube.com/watch?v=1aywN5eFOys

# I wanted to try solving while watching the video,
# it didn't seem like too many options to bruteforce!

# Found 144 solutions
# e.g. 8 + 13 * 2 / 1 + 6 + 12 * 3 - 5 - 11 + 7 * 4 / 9 - 10 = 66

solutions = [] 

[1, 2, 3, 4, 5, 6, 7, 8, 9].permutation.each do |a, b, c, d, e, f, g, h, i|
    rhs = ((((((((((((a + 13) * b) / c.to_f) + d) + 12) * e) - f) - 11) + g) * h) / i.to_f) - 10)
    solutions << [a, b, c, d, e, f, g, h, i] if rhs == 66
end

if solutions.any?
    puts "Found #{solutions.count} solutions"
    a, b, c, d, e, f, g, h, i = solutions.sample
    puts "e.g. #{a} + 13 * #{b} / #{c} + #{d} + 12 * #{e} - #{f} - 11 + #{g} * #{h} / #{i} - 10 = 66"
else
    puts "No solutions"
end