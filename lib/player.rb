class Player
    attr_accessor :player_name, :nb_win
  
    def initialize(name)
        @player_name = name
        @nb_win = 0 
    end

end