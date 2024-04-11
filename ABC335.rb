# A問題
s = gets.chomp
s[-1] = '4'
puts s*''

# 別解
s = gets.chomp
puts (s[..-2] + '4')

# B問題
n = gets.to_i

(n + 1).times do |i|
    (n + 1).times do |j|
        (n + 1).times do |k|
            if i + j + k <= n
                puts "#{i} #{j} #{k}"
            end
        end
    end
end

# 別解
n = gets.to_i

(n + 1).times do |i|
    (n - i + 1).times do |j|
        (n - i - j + 1).times do |k|
            puts "#{i} #{j} #{k}"
        end
    end
end

# 別解
n = gets.to_i
[*0..21].repeated_permutation(3) do |ary|
    puts ary.join(' ') if ary.sum <= n
end

# 別解
n = gets.to_i

0.step(n) do |i|
    0.step(n - i) do |j|
        0.step(n - i - j) do |k|
            puts "#{i} #{j} #{k}"
        end
    end
end
