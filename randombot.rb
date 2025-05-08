require_relative "player"

class RandomBot < Player

    def play()
        return rand(1..5)
    end
    
end