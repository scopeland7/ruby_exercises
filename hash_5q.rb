q_and_a = {
	'What is your name?' => 'sam',
	'What is your quest?' => 'to seek the grail',
	'What is your favorite color?' => 'green!',
	'What is the airspeed velocity of a swallow?' => 'i don\'t know that!',
	'What is the name of Arthur\'s sword?' => 'excalibur'
}

score = 0

q_and_a.each do |question, answer|
	puts question
	user_ans = gets.chomp.downcase
	if user_ans == q_and_a[question]
		score += 1
		puts "Correct!"
	else
		puts "Incorrect!"
		break
	end
end

if score == q_and_a.length
	puts "Very good! You may pass!"
else
	puts "Off the bridge with you!"
end