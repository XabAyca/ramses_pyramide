def start_game
  puts "Bienvenue dans notre super jeux vidéo"
  puts "Le but est d'atteindre le niveaux 10"
  puts "pour cela tu devras lancer un dé"
  puts "5, 6 tu montes d'un niveau"
  puts "1, tu descends d'un niveau"
  puts "2, 3, 4 rien ne se passe"
  return start=0
end

def game(start)
  if start == 10
    victory
    else
    puts "======= Lance le dé ======="
    puts "Appuies sur entré pour lancer le dé"
    print "> "
    gets.chomp
    play= 1+rand(6)
  end
  return play
end

def level_up_down(play)
  if play==1 && start!=0
    play -= 1
    puts "Vous avez perdu un niveau :"
    puts " Niveau actuel #{start} !"
    game
  elsif
    play>=5
    puts "Vous avez gagnez un niveau :"
    puts " Niveau actuel #{start} !"
    game
  else
    puts "Vous restez à votre place"
    game
  end 
end

def victory
  puts "Trop fort maggle tu as atteints le level 10"
  puts "Tu veux rejouer ? tape oui ou non"
  print "> "
  replay=gets.chomp.to_s
  if replay=="oui"
    start_game
  else
    puts "Connard !!!"
  end
end
 
def perform
  start=start_game
  play=game
  level_up_down(play)
end  

perform
