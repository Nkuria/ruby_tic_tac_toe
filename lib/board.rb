class Board
    COMBOS = [[1,2,3], [4,5,6], [7,8,9], [1,4,7] [2,5,8], [3,6,9], [1,5,9] [3,5,7]].freeze
    def initialize
        @board = [0,0,0,0,0,0,0,0,0]
    end

    def make_move?(index, symb)
        if valid_move
          @board[index - 1] = symb
          return true
        else
            false
        end
    end

    def valid_move?(index)
        if @board[index - 1] == 0
            return true
        else
            return false
        end
    end

    def check_winner
        COMBOS.each do |combo|
           return 1 if combo.all? {|cm| @board[cm].eql? 'x'}
           return 2 if combo.all? {|cm| @board[cm].eql? 'o'}
        end
        0
    end

    def board_full?
        !@board.include? 0
    end

    def game_status
        if check_winner == 1
            return 1
        elsif check_winner == 2
            return 2
        elsif check_winner == 0 && !board_full?
            return 3
        elsif check_winner == 0 && board_full?
            return 0
        end
    end

    def print_board
        @board.each do |b|
            print b
        end
    end


end