# A問題
a, b = gets.split.map(&:to_i)

if a + b == 9
    puts 0
else
    puts a + b + 1
end

# 別解(三項演算子)
a, b = gets.split.map(&:to_i)

puts a + b == 9 ? 0 : a + b + 1

# B問題
n = gets.chomp.to_i
array = n.times.map do
    gets.chomp.split.map(&:to_i)
end

array.each do |row|
    result = []
    row.select.with_index(1) do |num, i|
        result << i if num != 0
    end
    print "#{result.join(' ')}\n"
end

# 別解
n = gets.chomp.to_i
array = n.times.map do
    gets.chomp.split.map(&:to_i)
end

array.each do |row|
    result = row.map.with_index(1) { |num, i| i unless num == 0 }.compact
    puts result.join(' ')
end

# 別解
n = gets.chomp.to_i
array = Array.new(n) { gets.split.map(&:to_i) }
array.each do |row|
    puts (1..n).filter { |i| row[i - 1] == 1 }*' '
end