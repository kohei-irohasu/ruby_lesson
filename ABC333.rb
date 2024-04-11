# A問題
n = gets.to_i
puts "#{n}" * n

# 別解
n = gets.to_i
puts n.to_s * n

# B問題
# 解1.線分の長さは2通りだけ
# 2.それぞれの頂点を数値に変換し、その絶対値を考える
# 解1-1
block1 = %w[AB BC CD DE EA AE ED DC CB BA]
s = gets.chomp
t = gets.chomp
ans_s = block1.count(s) == 1 ? 1 : 2
ans_t = block1.count(t) == 1 ? 1 : 2
puts ans_s == ans_t ? 'Yes' : 'No'

# 解1-2
m = "ABCDEAEDCBA"
s = gets.chomp
t = gets.chomp

puts m.include?(s) == m.include?(t) ? 'Yes' : 'No'

# 別解
s1, s2 = gets.chomp.split('').map(&:ord)
t1, t2 = gets.chomp.split('').map(&:ord)

s = (s1 - s2).abs
t = (t1 - t2).abs
puts s == t || 5 - s == t ? 'Yes' : 'No' # 右回りの場合と左回りの場合