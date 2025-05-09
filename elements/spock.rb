require_relative "element"

class Spock < Element

    def compare_to(element)
        case element.name
        when 'Scissors' then
            'Spock smashes Scissors'
        when 'Rock' then
            'Spock vaporizes Rock'
        when 'Spock' then
            'Spock equals Spock'
        end
    end
end

# Scissors cut Paper
# Paper covers Rock
# Rock crushes Lizard
# Lizard poisons Spock
# Spock smashes Scissors
# Scissors decapitate Lizard
# Lizard eats Paper
# Paper disproves Spock
# Spock vaporizes Rock
# Rock crushes Scissors