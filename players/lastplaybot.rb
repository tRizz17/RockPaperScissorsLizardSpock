require_relative "../history"

class LastPlayBot < Player

    def initialize(*args)
        super(*args)
    end

    def play()
        last = @history.opponent_plays.last
        last.nil? ? $rock : last
    end
end