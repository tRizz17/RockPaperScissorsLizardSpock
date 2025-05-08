
require_relative "element"
class Paper < Element

    def compare_to(element)
        case element.name
        when 'Rock' then
            'Paper covers Rock'
        when 'Spock' then
            'Paper disproves Spock'
        end
    end
end
