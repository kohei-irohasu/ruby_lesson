# A問題
s = gets.chomp.chars
u = s.find { |c| s.count(c) == 1 }
puts s.find_index(u) + 1

# 別解
s = gets.chomp.chars   # charsで1文字ずつの配列に変える
t = s.tally            # 配列を集計し、ハッシュで返す
p s.index(t.key(1))+1  # t.key(1) => valueが1のkeyを取り出す

# B問題
n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.to_i

q.times do 
    a, b = gets.split.map(&:to_i)
    a_id = p.find_index(a)
    b_id = p.find_index(b)
    if a_id < b_id
        puts a
    else
        puts b
    end
end

# 別解
n = gets.to_i
p = gets.split.map(&:to_i)
q = gets.to_i

q.times do
    a, b = gets.split.map(&:to_i)
    puts p.index(a) < p.index(b) ? a : b
end
