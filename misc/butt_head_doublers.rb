# https://www.youtube.com/shorts/y-TQq6sQ4Z0

# Butt head doublers are defined as numbers whose last digit transposes to the first when doubling.
# i.e. ABCDE x 2 = EABCD

def find_butt_head_doublers(length_bound: 1000)
    [2, 4, 6, 8].each do |start_digit|
        digits = [start_digit]
        carry = 0
        loop do
            # multiply the current working digit by 2 and add any previous carry
            product = digits.last * 2 + carry
            next_digit = product % 10
            carry = product / 10
            # completed loop if the next calculated digit matches the starting digit
            if next_digit == start_digit && carry == 0
                result = digits.reverse.join.to_i
                # Verify that shifting the last digit to the front equals its double
                if (result * 2).to_s == "#{start_digit}#{result.to_s[0..-2]}"
                    puts "Found Doubler ending in #{start_digit}: #{result}"
                    puts "Length: #{result.to_s.length} digits\n\n"
                end
            end
            # add digit to sequence and keep building left
            digits << next_digit
            # brake if sequence doesn't resolve
            break if digits.length > length_bound
        end
    end
end

find_butt_head_doublers(length_bound: 20)