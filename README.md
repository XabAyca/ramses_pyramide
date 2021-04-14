
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