@q_and_a = {
	'What is your name?' => 'sam',
	'What is your quest?' => 'to seek the grail',
	'What is your favorite color?' => 'green!',
	'What is the name of Arthur\'s sword?' => 'excalibur',
	'What is the airspeed velocity of a swallow?' => 'that depends, is the swallow african or european?'
}

@score = 0

def ask_question(question)
	puts question
	return question
end

def eval_question(question, answer)
	status = false
	if answer == @q_and_a[question]
		return true
	end
end

def quiz_time!
	puts "I am the bridge keeper. You must answer my questions if you want to cross."
	@q_and_a.each do |question, answer|
		input = ask_question(question)
		if eval_question(input, answer) == true
			@score += 1
		else
			puts "Off the bridge with you!"
			break
		end
	end
end

def display_score (s, q_a)
	if @score == q_a.length
		puts "Very well! You may pass!"
	else

def main
	ask_question
	eval_question
	quiz_time!
	puts_score(@score, @question_answers)


