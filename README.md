def ask_floor
  puts "Salut, bienvenue! combien d'étages veux-tu pour ta demi-pyramide (entre 1 et 25) ?"
  print "> "
  floor=gets.chomp.to_i
  return floor
end

def half_pyramid (floor)
  floor.times {|i|  puts " "*(floor-i-1)+"#"*(i+1)}
end

def full_pyramid(floor)
  floor.times {|i| puts " "*(floor-i-1)+"#"*(i+i+1)}
end

def wtf_pyramid(floor)
  floor.times {|i| puts " "*(floor-i-1)+"#"*(i+i+1)}    
end

def wtf_pyramid2(floor)
  for i in (0..floor)
    puts " "*(floor-i-1) + "#"*(i+i+1)
  end  
end


def perform
  floor=ask_floor
  wtf_pyramid2 (floor)
end

perform