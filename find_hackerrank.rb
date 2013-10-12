n = gets.strip.to_i

starts = -> s { s =~ /^hackerrank/ }
ends = -> s { s =~ /hackerrank$/ }

n.times do
    s = gets.strip
    
    if starts[s] && ends[s]
        puts 0
    elsif starts[s]
        puts 1
    elsif ends[s]
        puts 2
    else
        puts -1
    end
    
end
