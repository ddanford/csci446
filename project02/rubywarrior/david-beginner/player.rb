class Player
  def play_turn(warrior)
    # add your code here
	if warrior.health >= 20
		if warrior.feel.enemy?
			warrior.attack!
			@previousaction = :attack
		else
			if warrior.feel.captive?
				warrior.rescue!
				@previousaction = :rescue
			else
				warrior.walk!
				@previousaction = :advance
			end
		end
	else
		if @previoushealth > warrior.health and (@previousaction == :advance or @previousaction == :retreat)
			@ranged = true
			puts 'Ranged'
		end
		if @previoushealth <= warrior.health
			@ranged = false
			puts 'Not Ranged!'
		end
		if @ranged
			if warrior.feel.enemy?
				warrior.attack!
				@previousaction = :attack
			else
				warrior.walk!
				@previousaction = :advance
			end
		else
			if warrior.health < 10
				if warrior.feel.enemy?
					warrior.walk!(:backward)
					@previousaction = :retreat
				else
					warrior.rest!
					@previousaction = :rest
				end
			else
				if warrior.feel.enemy?
					warrior.attack!
					@previousaction = :attack
				else
					if warrior.feel.captive?
						warrior.rescue!
					else
						warrior.walk!
						@previousaction = :advance
					end
				end
			end
		end
	end
	@previoushealth = warrior.health
  end
end