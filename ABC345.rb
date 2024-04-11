# A問題
    s = gets.chomp

    if(s[0] == '<' && s[-1] == '>' && s.count('=') == s.length - 2)
        puts 'Yes'
    else
        puts 'No'
    end

    ## 別解(正規表現)
    puts gets[/^<=+>$/] ? 'Yes' : 'No'

# B問題
    x = gets.chomp.to_i
    puts Rational(x, 10).ceil

    ## 別解
    p (gets.to_i + 9) / 10