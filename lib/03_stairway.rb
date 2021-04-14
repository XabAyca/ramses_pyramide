def start_game
  puts "Bienvenue dans notre super jeux vidéo"
  puts "Le but est d'atteindre le niveaux 10"
  puts "pour cela tu devras lancer un dé"
  puts "5, 6 tu montes d'un niveau"
  puts "1, tu descends d'un niveau"
  puts "2, 3, 4 rien ne se passe"
  start=0
  game(start)
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
    puts play 
    end
  level_up_down(play, start)
end

def level_up_down(play, start)
  if play==1 && start!=0
    start -= 1
    puts "Vous avez perdu un niveau :"
    puts " Niveau actuel #{start} !"
    game(start)
  elsif play>=5
    start +=1
    puts "Vous avez gagnez un niveau :"
    puts " Niveau actuel #{start} !"
    game(start)
  else
    puts "#{start}, vous restez à votre place"
    game(start)
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
  return 
end
 
def perform
  start=start_game
  play=game(start)
  level_up_down(play, start)
end  

victory