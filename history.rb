

class History
    attr_accessor :plays
    attr_accessor :opponent_plays
    attr_accessor :score

    def initialize(plays, opponent_plays, score)
        @score = 0
        @opponent_plays = Array.new()
        @plays = Array.new()
    end
    
    def log_play(move)
    end

    def log_opponent_play(move)
    end

    def add_score()
    end


end
