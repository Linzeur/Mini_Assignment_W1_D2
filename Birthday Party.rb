loop do
    puts "Hi, enter a number of test cases (1-20):"
    tests=gets.chomp.to_i
break if tests>0 && tests<=20
end

for i in 0..tests
    loop do
        puts "Enter a number of friends (1-100)"
        friends=gets.chomp.to_i
    break if friends>0 && friends<=100
    end

    loop do
        puts "Enter a number of chocolates in a packet (1-100000)"
        packets=gets.chomp.to_i
    break if friends>0 && friends<=100000
    end
    puts (packets%friends==0 ? "Yes" : "No")
end