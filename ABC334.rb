# A問題
b, g = gets.split.map(&:to_i)
puts b > g ? 'Bat' : 'Glove'

# B問題
a, m , l, r = gets.split.map(&:to_i)
r -= a
l -= a
puts r / m - (l - 1) / m