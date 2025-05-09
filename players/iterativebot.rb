

class IterativeBot

    def initialize(args*)
        super(args*)
        @rand_dict = {
            1 => "StupidBot",
            2 => "RandomBot",
            3 => "IterativeBot",
            4 => "LastPlayBot",
            5 => "Human"
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
