# A問題
s = gets.split('.')
puts s[-1]

# 別解
puts gets.split(?.)[-1]

# B問題
h, w, n = gets.split.map(&:to_i)

array = Array.new(h) { Array.new(w, ".") }

i = 0
j = 0
dir = 0  # dirは方向、(0, 1, 2, 3) => (上、右、下、左)

n.times do
    if array[i][j] == "."
        array[i][j] = "#"
        dir = (dir + 1) % 4
    else
        array[i][j] = "."
        dir = (dir - 1) % 4
    end
    case dir
    when 0
        i = (i - 1) % h
    when 1
        j = (j + 1) % w
    when 2
        i = (i + 1) % h
    when 3
        j = (j - 1) % w
    end
end

h.times do |i|
    puts array[i]*''
end

# 別解
h, w, n = gets.split.map(&:to_i)
array = Array.new(h) { Array.new(w, ".") }

i = j = 0
# 各方向に対する移動量を配列で管理
di, dj = [-1, 0, 1, 0], [0, 1, 0, -1]
dir = 0 # 初期方向は上

n.times do
    array[i][j] = array[i][j] == "." ? "#" : "."
    dir += array[i][j] == "#" ? 1 : -1
    dir %= 4
    i = (i + di[dir]) % h
    j = (j + dj[dir]) % w
end

array.each { |row| puts row.join }