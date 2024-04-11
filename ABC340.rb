# A問題
a, b, d = gets.split.map(&:to_i)
arr = [a]

i = 0
while arr[i] < b do
    arr[i + 1] = arr[i] + d
    i += 1
end

puts arr.join(' ')

# 別解
a, b, d = gets.split.map(&:to_i)
arr = (a..b).step(d).to_a
puts arr.join(' ')

# 別解2
a, b, d = gets.split.map(&:to_i)
puts a.step(b, d).to_a*' '

# B問題
q = gets.to_i
a = []
q.times do
    i, n = gets.split.map(&:to_i)
    if i == 1
        a << n
    elsif i == 2
        puts a[-n]
    end
end

# 別解(パターンマッチング)
a = []
gets.to_i.times do
    case gets.split.map(&:to_i)
    in 1, x
        a << x
    in 2, k
        puts a[-k]
    end
end