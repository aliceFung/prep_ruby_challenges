def counting_game(num_players, max_num)
  group = (1..100).to_a
	player_index = 0

	1.upto(max_num) {|count|
	    puts "Player #{group[player_index].to_s} says #{count.to_s}"
	#reverse direction if divisible by 7. i.e. 8 would be said by person8
	    if count % 7 == 0 && count % 11 == 0
		    current_player = group[player_index]
		    group.reverse!
		    player_index = group.index(current_player)
		    player_index += 2
	    elsif count % 7 == 0
		    current_player = group[player_index]
		    group.reverse!
		    player_index = group.index(current_player)
		    player_index += 1
	#skip the next person, p3 says 33, p5 says 34
	    elsif count % 11 == 0
		    player_index += 2
	    else
		    player_index += 1
	    end

	    player_index -= group.length if player_index >= group.length

        }
    puts "End of Game."
end

counting_game(10,100)