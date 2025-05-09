
class Element
    attr_accessor :name
    def initialize(name)
        @name = name
    end

    def compare_to(element)
        puts 'This method should be overridden'
    end
end

require_relative "lizard"
require_relative "spock"
require_relative "rock"
require_relative "paper"
require_relative "scissors"


$lizard = Lizard.new('Lizard')
$spock = Spock.new('Spock')
$rock = Rock.new('Rock')
$scissors = Scissors.new('Scissors')
$paper = Paper.new('Paper')

$moves = [$lizard,$spock,$rock,$scissors,$paper]
