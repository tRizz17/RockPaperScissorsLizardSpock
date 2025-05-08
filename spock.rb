require_relative "element"

class Spock < Element

    def compare_to(element)
        case element.name
        when 'Scissors' then
            'Spock smashes Scissors'
        when 'Rock' then
            return 'Spock vaporizes Rock'
        end
    end
end
