def ask_floor
  puts "Combien d'étage voulez vous (choisis un nombre impair) ?"
  print "> "
  floor=gets.chomp.to_i
  until floor%2!=0 
    puts "Je t'ai dit de prendre un nombre impair connard !!"
    print "> "
    floor=gets.chomp.to_i
  end
  return floor
end

def half_pyramid(floor)
  floor.times {|i| puts " "*(floor-i-1)+"#"*(i+1)}
end

def full_pyramid(floor)
  floor.times {|i| puts " "*(floor-i-1)+"#"*(i+i+1)}
end

def wtf_pyramid(floor)
  floor.times {|i| puts " "*(floor-i-1)+"#"*(i+i+1)}
  floor=floor-1
  floor.times {|i| puts " "*(i+1)+"#"*(floor+floor-i-i-1)}
end

def perform
  floor= ask_floor
  wtf_pyramid(floor)
end

perform