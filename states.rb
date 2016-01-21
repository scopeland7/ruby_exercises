def get_states
	visited = []
	
	while true
		state = gets.chomp
		if state == ''
			break
		end
		visited.push state.capitalize
		# puts state
	end
return visited
end

puts "What states have you visited?"
puts "Press return to stop adding states."
my_states = get_states()
puts my_states.to_s