
require_relative "element"
require_relative "history"

class Player
    attr_reader :name, :history

    def initialize(name,history)
        @name = name
        @history = history 
    end

    def play()
    end


end