class Game

    def initialize(player_1, player_2)
        @player_1 = player_1
        @player_2 = player_2
    end

    def new_game
        @board = Board.new()
        @move_count = 0
    end

    def game_play
        if !@move_count.odd
            puts "Player 1 turn"
        else
            puts "player 2 turn"

        end

        move = gets
        if !@board.make_move?(move, @player_1.symb)
            puts "invalid move"
            return
        end

    end

    
end