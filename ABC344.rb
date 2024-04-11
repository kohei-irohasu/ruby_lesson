# A問題
s = gets.split('|')
puts s[0] + s[2]

# 別解(正規表現)
puts gets.gsub(/\|.*\|/, '')

# B問題
array = []
loop do
    array << gets.to_i
    break if array[-1].zero?
end
puts array.reverse

# 別解
array = [].tap do |arr|
    while (input = gets.to_i) != 0
        arr << input
    end
    arr << input
end.reverse

puts array