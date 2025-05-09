
require_relative "element"

class Scissors < Element
    def compare_to(element)
        case element.name
        when 'Paper' then
            'Scissors cut Paper'
        when 'Lizard' then
            'Scissors decapitate Lizard'
        when 'Scissors' then
            'Scissors equals Scissors'
        end
    end
end