
require_relative "player"

class StupidBot < Player

    def initialize(*args)
        super(*args)
    end

    def play()
        return $rock
    end

end
