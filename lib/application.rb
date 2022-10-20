class Application

    attr_accessor :p2name, :p1name

    def run
        hello
        choise_name
        first_game
        replay
        bye
    end

    def hello
        puts " ------------------------------------------------
|        Bienvenue sur 'LE MORPION' !            |
|Le but du jeu est de faire des ligne de X ou 0 !|
 ------------------------------------------------"

    end

    def bye
        puts ""
        puts "Fin du jeu"
    end

    def choise_name

        puts "Player 1 name ?"
        print ">>> "
        name1 = gets.chomp
        p1 = Player.new(name1)
        puts "Player 2 name ?"
        print ">>> "
        name2 = gets.chomp
        p2 = Player.new(name2)
        puts ""
        puts "Voici les deux jouers" + " #{p1.player_name}".red + " et " + "#{p2.player_name}".blue
        puts ""
        @p1name = p1.player_name.to_s
        @p2name = p2.player_name.to_s
    end

    def first_game
        gogame = Board.new(@p1name, @p2name)
        gogame.run
    end

    def replay 
        puts ""
        puts "Voulez vous rejouer ? y / n"
        print ">>> "
        input = gets.chomp
        if input == "y"
            puts `clear`
            gogame = Board.new(@p1name, @p2name)
            gogame.run
            replay
        else
        end
    end

end