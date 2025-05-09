require_relative "elements/element"   # uncomment to load element.rb
require_relative "players/player"    # uncomment to load player.rb 
require_relative "players/stupidbot"
require_relative "players/randombot"
require_relative "players/iterativebot"
require_relative "players/lastplaybot"
require_relative "players/human"
require_relative "history"   # uncomment to load history.rb

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
	  1 => StupidBot,
	  2 => RandomBot,
	  3 => IterativeBot,
	  4 => LastPlayBot,
	  5 => Human
	}
  
	puts "Please choose two players:"
	bots.each { |num, name| puts "(#{num}) #{name}" }

	print "\nSelect Player 1: "
	choice1 = bots[gets.to_i]
	p1 = choice1.new(choice1.to_s, History.new)
	p1move = p1.play()

	print "\nSelect Player 2: "
	choice2 = bots[gets.to_i]
	p2 = choice2.new(choice2.to_s,History.new)
	p2move = p2.play()

	comp1 = p1move.compare_to(p2move)
	comp2 = p2move.compare_to(p1move)

	if comp1.match?("equals") || comp2.match?("equals")
		puts comp1
		puts "Round ends in a tie"

	elsif comp1 == nil
		puts comp2

	else 
		puts comp1
	end
	
end


# Main Program (should be last)
n_rounds = 5
# call to kick off the game
game(n_rounds)