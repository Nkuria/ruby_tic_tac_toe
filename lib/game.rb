class Game
    COMBOS = [[1,2,3], [4,5,6], [7,8,9], [1,4,7] [2,5,8], [3,6,9], [1,5,9] [3,5,7]]

    def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2
    end

    def new_game
        @board = Board.new()
    end

    
end