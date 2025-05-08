
require_relative "element"

class Scissors < Element
    def compare_to(element)
        case element.name
        when 'Paper' then
            puts 'Scissors cut Paper'
        when 'Spock' then
            puts 'Paper covers Spock'
        end
    end
end