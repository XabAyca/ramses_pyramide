def sign_up 
    puts "Bonjour, veuillez définir un mot de passe :"
    print">>>"
    password = gets.chomp.to_s
end

def login(password)
    puts "===> Mot de passe <==="
    password2 = gets.chomp.to_s 
    
    until 
        
        password == password2
        puts "\033[31m"+" ----Access Denied----"+"\033[0m"
        puts "===> Mot de passe <==="
        password2 = gets.chomp.to_s
    end


    welcome_to_DEVWORLD

end

def welcome_to_DEVWORLD
   
    puts "\033[32m"+" ----Access Granted----"+"\033[0m"
    puts "Bienvenue sur la secret zone des DEVS"
    puts "0100111101011101110001010010110011100000111001"
    puts "0001111101011101111000011000111010110001111010"
    puts "1101110110101001110001111000101010110110001101"

end

def perform



    password = sign_up
    login(password)

end

perform