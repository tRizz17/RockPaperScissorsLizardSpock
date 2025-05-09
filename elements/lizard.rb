require_relative "element"
class Lizard < Element

    def compare_to(element)
        case element.name
        when 'Spock' then
            puts 'Lizard poisons Spock'
        when 'Paper' then
            puts 'Lizard eats Paper'
        end

    end

end