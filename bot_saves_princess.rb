#!/bin/ruby

Position = Struct.new(:x, :y)

def displayPathtoPrincess(n,grid)
    search   = -> l do
        y = grid.index( grid.select{ |row| row.index(l) }[0] )
        x = grid[y].index(l)
        Position.new(x, y)
    end
    
    p = search['p']
    m = search['m']
    
    moves = ""
    
    until p == m
        m.x += 1 and moves << "RIGHT\n" if m.x < p.x
        m.x -= 1 and moves << "LEFT\n" if m.x > p.x
        m.y += 1 and moves << "DOWN\n" if m.y < p.y
        m.y -= 1 and moves << "UP\n" if m.y > p.y  
    end
    
    return moves
end

m = gets.to_i

grid = Array.new(m)

(0...m).each do |i|
    grid[i] = gets.strip
end

puts displayPathtoPrincess(m,grid)
