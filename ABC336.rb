# A問題
n = gets.to_i
puts 'L' + 'o' * n + 'ng'

# 別解
puts "L#{"o" * gets.to_i}ng"

# B問題
n = gets.to_i
ans = 0

while n > 1
    if n % 2 == 0
        ans += 1
        n /= 2
    elsif n % 2 == 1
        break
    end
end

print(ans)

# 別解
n = gets.chomp.to_i
str = n.to_s(2)
str_re = str.reverse
result = str_re.split('').find_index('1')
puts result

# 別解ver2
n = gets.to_i
puts Math.log2(n & -n).to_i