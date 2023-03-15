class Player
    @@player_count = 0

    attr_reader :name
    attr_reader :symb
    def initialize(name)
        @name = name
        if player_count == 0
            @sym = 'x'
            @@player_count += 1
        else
            @sym = 'o'
            @@player_count += 1
        end
    end


end