require_relative "player"

class RandomBot < Player

    def initialize(*args)
        super(*args)
        @rand_dict = {
            1 => $rock,
            2 => $lizard,
            3 => $spock,
            4 => $paper,
            5 => $scissors
        }
    end
    
    def play()
        i = rand(1..5)
        return @rand_dict[i]
    end
    
end