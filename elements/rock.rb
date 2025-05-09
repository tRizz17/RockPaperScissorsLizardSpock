require_relative "element"
class Rock < Element

    def compare_to(element)
        case element.name
        when 'Lizard' then
            'Rock crushes Lizard'
        when 'Scissors' then
            'Rock crushes Scissors'
        end
    end
end
