# A問題
    n = gets.chomp.to_i
    a = gets.chomp.split.map(&:to_i)

    b = []
    (n - 1).times do |i|
        b << a[i] * a[i + 1]
    end
    puts b.join(' ')

    ## 別解
    n = gets.chomp.to_i
    a = gets.chomp.split.map(&:to_i)

    b = a.each_cons(2).map { |x, y| x * y }
    puts b.join(' ')

    ## 別解
    gets
    puts gets.split.map(&:to_i).each_cons(2).map{_1*_2}*' '

# B問題
    # 文字列Sの長さW + Bの部分文字列を探索し、それぞれについてその部分文字列に含まれるwとbの
    # 数が条件と一致しているか確認する。
    # 文字列Sを１文字ずつずらしていったとき、繰り返し単位の長さだけずらすとはじめの文字列と一致する。
    # そのため、繰り返し単位の文字列分だけ調べればよい。
    
    t = "wbwbwwbwbwbw"
    w, b = gets.split.map(&:to_i)

    t.length.times do |i|
        num_of_w = 0
        num_of_b = 0
        (w + b).times do |j| # 単語数分だけ、tをずらしながら、wとbの数を数える
            if t[(i + j) % t.length] == 'w'
                num_of_w += 1
            else
                num_of_b += 1
            end
        end
        if w == num_of_w && b == num_of_b
            puts 'Yes'
            exit
        end
    end

    puts 'No'

    ## 別解
    w, b = gets.split.map(&:to_i)
    s = 'wbwbwwbwbwbw' * 20 # s.size = 12, w + g <= 200より

    puts (0...s.size-w-b).any?{|i| s[i, w+b].count('w')==w} ? 'Yes' : 'No'
