require_relative "history"

class Human < Player

    def initialize(*args)
        super(*args)
        @plays = {
            1 => $rock,
            2 => $paper,
            3 => $scissors,
            4 => $lizard,
            5 => $spock
        }
        @move = nil
    end

    def play()
        invalid = true
        while invalid
            @plays.each { |num, move| puts "(#{num}) #{move.name}" }
            print "Enter your move: "
            input = gets.to_i
            if (1..5).include?(input)
                @move = @plays[input]
                invalid = false
            end
        end
        return @move
    end

end