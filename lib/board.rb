class Board

    attr_accessor :board_empty, :turn, :j1, :j2

    def initialize(p1, p2)
        @j1 = p1
        @j2 = p2

        @board_empty = []

        9.times do |i|
            @board_empty << BoardCase.new(" ", i + 1)
        end
        @turn = 0

    end

    def final_result
        if @turn == 9
            puts "Egaliter pas de winer".green
        elsif @turn % 2 == 0
            puts "Joueur" + " #{@j2} ".blue + "win"
        else
            puts "Joueur" + " #{@j2} ".blue + "win"
        end
    end

    def run

        while victory? == false && @turn < 9
            affichage
            play      
        end
        puts `clear`
        affichage
        final_result  
    end

    def affichage 
        puts "    C'est le tour #{@turn}"
        puts ""
        puts "       1   2   3"
        puts "    a  " + board_empty[0].inside + " | " + board_empty[1].inside + " | " + board_empty[2].inside
        puts"      -----------"
        puts "    b  " + board_empty[3].inside + " | " + board_empty[4].inside + " | " + board_empty[5].inside
        puts"      -----------"
        puts "    c  " + board_empty[6].inside + " | " + board_empty[7].inside + " | "  + board_empty[8].inside      
    end

    def play    
        @turn = @turn + 1
    
        if @turn % 2 == 0
            puts ""
            puts "   C'est à" + " #{@j2}".blue + " de jouer"
            print ">>> "
            were = gets.chomp
            puts `clear`
            case
            when were == "a1" && @board_empty[0].inside == " " 
                @board_empty[0].inside = "X"
            when  were == "a2" && @board_empty[1].inside == " " 
                @board_empty[1].inside = "X"
            when  were == "a3" && @board_empty[2].inside == " " 
                @board_empty[2].inside = "X"
            when  were == "b1" && @board_empty[3].inside == " " 
                @board_empty[3].inside = "X"
            when  were == "b2" && @board_empty[4].inside == " " 
                @board_empty[4].inside = "X"
            when  were == "b3" && @board_empty[5].inside == " " 
                @board_empty[5].inside = "X"
            when  were == "c1" && @board_empty[6].inside == " " 
                @board_empty[6].inside = "X"
            when  were == "c2" && @board_empty[7].inside == " " 
                @board_empty[7].inside = "X"
            when  were == "c3" && @board_empty[8].inside == " " 
                @board_empty[8].inside = "X"
            else
                @turn = @turn - 1
            end
        else
            puts ""
            puts "   C'est à" + " #{@j1}".red + " de jouer"
            print ">>> "
            were = gets.chomp
            puts `clear`
            case
            when were == "a1" && @board_empty[0].inside == " " 
                @board_empty[0].inside = "0"
            when  were == "a2" && @board_empty[1].inside == " " 
                @board_empty[1].inside = "0"
            when  were == "a3" && @board_empty[2].inside == " " 
                @board_empty[2].inside = "0"
            when  were == "b1" && @board_empty[3].inside == " " 
                @board_empty[3].inside = "0"
            when  were == "b2" && @board_empty[4].inside == " " 
                @board_empty[4].inside = "0"
            when  were == "b3" && @board_empty[5].inside == " " 
                @board_empty[5].inside = "0"
            when  were == "c1" && @board_empty[6].inside == " " 
                @board_empty[6].inside = "0"
            when  were == "c2" && @board_empty[7].inside == " " 
                @board_empty[7].inside = "0"
            when  were == "c3" && @board_empty[8].inside == " " 
                @board_empty[8].inside = "0"
            else
                @turn = @turn - 1
            end
        end
        
    end

    def victory?
        if (@board_empty[0].inside == "X" && @board_empty[1].inside == "X" && @board_empty[2].inside == "X") || (@board_empty[0].inside == "0" && @board_empty[1].inside == "0" && @board_empty[2].inside == "0") ||(@board_empty[3].inside == "X" && @board_empty[4].inside == "X" && @board_empty[5].inside == "X") || (@board_empty[3].inside == "0" && @board_empty[4].inside == "0" && @board_empty[5].inside == "0") ||(@board_empty[6].inside == "X" && @board_empty[7].inside == "X" && @board_empty[8].inside == "X") || (@board_empty[6].inside == "0" && @board_empty[7].inside == "0" && @board_empty[8].inside == "0") ||(@board_empty[0].inside == "X" && @board_empty[4].inside == "X" && @board_empty[8].inside == "X") || (@board_empty[0].inside == "0" && @board_empty[4].inside == "0" && @board_empty[8].inside == "0") ||   (@board_empty[2].inside == "X" && @board_empty[4].inside == "X" && @board_empty[6].inside == "X") || (@board_empty[2].inside == "0" && @board_empty[4].inside == "0" && @board_empty[6].inside == "0") ||(@board_empty[0].inside == "X" && @board_empty[3].inside == "X" && @board_empty[6].inside == "X") || (@board_empty[0].inside == "0" && @board_empty[3].inside == "0" && @board_empty[6].inside == "0") ||(@board_empty[1].inside == "X" && @board_empty[4].inside == "X" && @board_empty[7].inside == "X") || (@board_empty[1].inside == "0" && @board_empty[4].inside == "0" && @board_empty[7].inside == "0") ||(@board_empty[2].inside == "X" && @board_empty[5].inside == "X" && @board_empty[8].inside == "X") || (@board_empty[2].inside == "0" && @board_empty[5].inside == "0" && @board_empty[8].inside == "0")
            return true
        else
            return false
        end
    end

end

class BoardCase

    attr_accessor :inside, :number
    #TO DO : la classe a 2 attr_accessor, sa valeur en string (X, O, ou vide), ainsi que son identifiant de case
    
    def initialize(inside, number)
        @inside = inside 
        @number = number
    end
        
end

