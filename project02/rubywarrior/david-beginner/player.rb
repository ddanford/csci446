class Player
  def play_turn(warrior)
    # add your code here
	if warrior.feel.enemy?
		warrior.attack!
	else
		warrior.walk!
	end
  end
end
