require_relative "../history"

class IterativeBot < Player

    def initialize(*args)
        super(*args)
        @rand_dict = {
            1 => $rock,
            2 => $paper,
            3 => $scissors,
            4 => $spock,
            5 => $lizard
        }
    
        @i = 1
    end

    def play()
        move = @rand_dict[@i]
        @i += 1
        @i = 1 if @i > 5
        return move
    end

end
