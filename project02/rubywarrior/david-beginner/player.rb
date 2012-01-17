class Player
  def play_turn(warrior)
    # add your code here
	if warrior.health < 10
		if warrior.feel.enemy?
			warrior.walk!(:backward)
		else
			warrior.rest!
		end
	else
		if warrior.feel.enemy?
			warrior.attack!
		else
			warrior.walk!
		end
	end
  end
end
