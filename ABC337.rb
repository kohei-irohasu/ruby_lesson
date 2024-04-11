# A問題
n = gets.to_i
t, a = 0, 0

n.times do 
    x, y = gets.split.map(&:to_i)
    t += x
    a += y
end

puts t > a ? "Takahashi" : t < a ? "Aoki" : "Draw"

# 別解
n = gets.to_i
xy = Array.new(n) { gets.split.map(&:to_i) }
x, y = xy.transpose.map(&:sum)
puts x > y ? 'Takahashi' : x < y ? 'Aoki' : 'Draw'

# B問題
str = gets.chomp
puts str[/^A*B*C*$/] ? 'Yes' : 'No'

# 別解
puts gets[/BA|CA|CB/] ? 'No' : 'Yes'

# 別解ver2
def check(s)
    return true if s.empty?

    last_char = ''
    s.each do |char|
        if char < last_char
            return false
        end
        last_char = char
    end
    true
end

s = gets.chomp.chars
puts check(s) ? 'Yes' : 'No'

# 別解ver3
s = gets.chomp.chars
puts s.sort == s ? 'Yes' : 'No'