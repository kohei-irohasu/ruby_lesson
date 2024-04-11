# A問題
str = gets.chomp
str_down = str.downcase
str_up = str.upcase

if str[0] == str_up[0] && str[1..] == str_down[1..]
    puts 'Yes'
else
    puts 'No'
end

# 別解1
str = gets.chomp
puts str == str.capitalize ? 'Yes' : 'No'

# 別解2
str = gets.chomp
puts str[/^[A-Z][a-z]*$/] ? 'Yes' : 'No'


# B問題
s = gets.chomp.split('').sort

hash = Hash.new(0)
s.each do |string|
    hash[string] += 1
end

puts hash.key(hash.values.max)

# 別解
s = gets.chomp.chars.tally.sort
puts s.max_by { |k, v| v }[0]

# 別解
s = gets.chomp
puts ('a'..'z').max_by { |i| s.count(i) }