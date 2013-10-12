#!/bin/ruby

def lonelyinteger(a)
    a.reduce(Hash.new(0)){ |h,s| h[s] += 1; h }.select{ |k,v| v == 1 }.keys[0]
end

a = gets.strip.to_i
b = gets.strip.split(" ").map! {|i| i.to_i}
print lonelyinteger(b)
