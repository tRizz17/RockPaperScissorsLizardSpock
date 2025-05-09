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


def begin_game()
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

	invalid = true
	while invalid
		print "Select Player 1: "
		input1 = gets.to_i
		print "Select Player 2: "
		input2 = gets.to_i
		if !(1..5).include?(input1) || !(1..5).include?(input2)
			puts "Invalid choice(s) - start over\n"
			next
		else
			choice1 = bots[input1]
			p1 = choice1.new(choice1.to_s, History.new)
			choice2 = bots[input2]
			p2 = choice2.new(choice2.to_s,History.new)
			puts "#{choice1.to_s} vs. #{choice2.to_s}\n\n"
			invalid = false
		end
	end
	return p1, p2
end


def round(p1,p2,x)
	puts "Round #{x}:"
	p1move = p1.play()
	p2move = p2.play()

	puts "Player 1 chose #{p1move.name}"
	puts "Player 2 chose #{p2move.name}"
	comp1 = p1move.compare_to(p2move)
	comp2 = p2move.compare_to(p1move)

	if comp1&.match?("equals") || comp2&.match?("equals")
		puts comp1
		puts "Round ends in a tie"
	elsif comp1 == nil
		p2.history.add_score()
		puts comp2
		puts "Player 2 won the round\n\n"
	else 
		p1.history.add_score()
		puts comp1
		puts "Player 1 won the round\n\n"
	end
	p1.history.log_play(p1move)
	p2.history.log_play(p2move)
	p1.history.log_opponent_play(p2move)
	p2.history.log_opponent_play(p1move)
end


def game(rounds)
	p1, p2 = begin_game()

	count = 1
	while count <= rounds
		round(p1,p2,count)
		count += 1
	end

	puts "\nFinal score is #{p1.history.score} - #{p2.history.score}"
	final_result = p1.history.score - p2.history.score
	if final_result > 0
		puts "Player 1 wins"
	elsif final_result < 0
		puts "Player 2 wins"
	else
		puts "Game was a draw"
	end

	
end


# Main Program (should be last)
n_rounds = 5
# call to kick off the game
game(n_rounds)