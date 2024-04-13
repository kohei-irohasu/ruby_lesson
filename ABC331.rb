# A問題
M, D = gets.split.map(&:to_i);
y, m, d = gets.split.map(&:to_i);

if d == D
    m += 1
    d = 1
    if m > M
        y += 1
        m = 1
    end
else
    d += 1
end

puts [y, m, d]

# B問題
n, s, m, l = gets.split.map(&:to_i)

min_cost = 10 ** 12
18.times do |i|
    14.times do |j|
        10.times do |k|
            if 6 * i + 8 * j + 12 * k >= n
                cost = s * i + m * j + l * k
                min_cost = [cost, min_cost].min
                break
            end
        end
    end
end

puts min_cost
