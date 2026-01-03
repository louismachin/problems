# https://www.reddit.com/r/askmath/comments/1o3qobr/how_to_solve_this_cross_math/
# https://www.youtube.com/watch?v=1aywN5eFOys

# I wanted to try solving while watching the video,
# it didn't seem like too many options to bruteforce!

# My solution:
# 1 + 13 * 2 / 3 + 4 + 12 * 5 - 7 - 11 + 8 * 6 / 9 - 10 = 66

options = [1, 2, 3, 4, 5, 6, 7, 8, 9]

options.permutation.each do |a, b, c, d, e, f, g, h, i|
    rhs = ((((((((((((a + 13) * b) / c) + d) + 12) * e) - f) - 11) + g) * h) / i) - 10)
    if rhs == 66
        puts "#{a} + 13 * #{b} / #{c} + #{d} + 12 * #{e} - #{f} - 11 + #{g} * #{h} / #{i} - 10 = 66"
        exit
    end
end

puts 'No solution'