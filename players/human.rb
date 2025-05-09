

class Human

    def initialize(*args)
        super(*args)
        @plays = {
            1 => 'Rock',
            2 => 'Paper',
            3 => 'Scissors',
            4 => 'Lizard',
            5 => 'Spock'
        }
        @move = nil
    end

    def play()
        invalid = true
        while invalid
            puts "Enter your move:"
            @plays.each { |num, name| puts "(#{num}) #{name}" }
            input = gets.chomp.to_i
            if (1..5).include?(input)
                @move = @plays[input]
                invalid = false
            end
        end
        return @move
    end

end