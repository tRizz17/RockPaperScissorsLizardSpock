require_relative "element"
class Lizard < Element

    def compare_to(element)
        case element.name
        when 'Spock' then
            'Lizard poisons Spock'
        when 'Paper' then
            'Lizard eats Paper'
        when 'Lizard' then
            'Lizard equals Lizard'
        end

    end

end