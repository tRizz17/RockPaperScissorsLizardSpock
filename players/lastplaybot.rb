require_relative "../history"

class LastPlayBot < Player

    def initialize(*args)
        super(*args)
        @history = history
        @last_play = @history.opponent_plays.last
    end

    def play()
        return @last_play
    end
end