# @clear_screen = "\e[H\e[2J"

@q_and_a = Hash.new
@score = 0

def populate_hash
	puts "Please specify how many questions you would like to add."
	length = gets.chomp.to_i
	n = 1
	if length == 0
		puts "You can't have a quiz without any questions!"
		populate_hash
	else
		length.times do
			print "Question #{n}: "
			question = gets.chomp.capitalize
			if !question.include?"?"
				puts "That's not a question! Let's try again..."
				redo
			end
			print "Answer for Question #{n}: "
			answer = gets.chomp.downcase
			@q_and_a[question] = answer
			n += 1
		end
		puts "Now let's run through your quiz!"
		gets
	end
end

def get_answer(question)
	puts question
	print ":\\"
	user_answer = gets.chomp.downcase
	return user_answer
end

def eval_question(question, answer)
	status = false
	if answer == @q_and_a[question]
		status = true
	end
	return status
end

def clear_screen
	puts "\e[H\e[2J"
end

def quiz_time!
	clear_screen
	puts "I am the bridge keeper. You must answer my questions if you want to cross."
	gets
	clear_screen
	@q_and_a.each do |question, answer|
		input = get_answer(question)
		if eval_question(question, input) == true
			@score += 1
		else
			clear_screen	
			puts "Off the bridge with you!"
			break
		end
		clear_screen
	end
	eval_score(@score, @q_and_a)
end

def eval_score (s, q_a)
	if @score == q_a.length
		puts "Very well! You may pass!"
	end
end

def main
	get_answer
	eval_question
	clear_screen
	quiz_time!
	eval_score(@score, @q_and_a)
end

populate_hash
quiz_time!