# A問題
n, s, k = gets.split.map(&:to_i)
ans = 0
n.times do
    p, q = gets.split.map(&:to_i)
    ans += p * q
end
print ans < s ? ans + k : ans


# B問題
k, g, m = gets.split.map(&:to_i)
g_value, m_value = 0, 0

k.times do 
    if g_value == g
        g_value = 0
    elsif m_value == 0
        m_value = m
    else
        s = [g - g_value, m_value].min
        g_value += s
        m_value -= s
    end
end

puts "#{g_value} #{m_value}"