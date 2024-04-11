# A問題
n = gets.chomp.to_i
puts "10" * n + ?1

# B問題
n = gets.to_i
a = gets.split.map(&:to_i)

(n - 1).times do |i|
    s, t = gets.split.map(&:to_i)
    a[i + 1] += (a[i] / s) * t
end
puts a[-1]