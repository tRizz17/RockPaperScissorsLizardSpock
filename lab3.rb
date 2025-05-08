require_relative "element"   # uncomment to load element.rb
#require_relative "player"    # uncomment to load player.rb 
#require_relative "history"   # uncomment to load history.rb

######################################### 	
#     CS 381 - Programming Lab #3		#
#										#
#  Thomas							 	#
#  rizzot@oregonstate.edu	            #
#										#
#########################################



def game(rounds)
	puts "\nWelcome to Rock, Paper, Scissors, Lizard, Spock!\n\n"

	bots = {
	  1 => "StupidBot",
	  2 => "RandomBot",
	  3 => "IterativeBot",
	  4 => "LastPlayBot",
	  5 => "Human"
	}
  
	puts "Please choose two players:"
	bots.each { |num, name| puts "(#{num}) #{name}" }
	
end


# Main Program (should be last)
n_rounds = 5
# call to kick off the game
game(n_rounds)