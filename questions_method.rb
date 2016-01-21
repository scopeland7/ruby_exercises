# @clear_screen = "\e[H\e[2J"

@q_and_a = {
	'What is your name?' => 'sam',
	'What is your quest?' => 'to seek the grail',
	'What is your favorite color?' => 'green!',
	'What is the name of Arthur\'s sword?' => 'excalibur',
	'What is the airspeed velocity of a swallow?' => 'that depends, is the swallow african or european?'
}

@score = 0

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

quiz_time!