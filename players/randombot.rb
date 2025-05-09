require_relative "player"

class RandomBot < Player

    def initialize(args*)
        super(args*)
        @rand_dict = {
            1 => "StupidBot",
            2 => "RandomBot",
            3 => "IterativeBot",
            4 => "LastPlayBot",
            5 => "Human"
        }
    end
    
    def play()
        i = rand(1..5)
        return @rand_dict[i]
    end
    
end