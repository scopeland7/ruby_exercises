questions = [
'What is your name?',
'What is your quest?',
'What is your favorite color?',
'What is the airspeed velocity of a swallow?',
'How\'s the weather today?',
]

answers = [
'sam',
'to seek the holy grail',
'blue, no yellow',
'is it an african or european swallow?',
'absolutely lovely'
]

score = 0

questions.each_with_index do |q, i|
	puts q
	user_ans = gets.chomp.downcase
	if user_ans == answers[i]
		score += 1
		puts "Correct!"
	else
		puts "Incorrect!"
	end	
end

puts "Your score is #{score}!"

