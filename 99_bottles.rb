bottles = 99

while bottles > 1

	puts bottles.to_s + " bottles of beer on the wall,"
	puts bottles.to_s + " bottles of beer,"
	puts "Take one down, pass it around,"

	if bottles == 2
		puts "#{bottles - 1} bottle of beer on the wall!"
		puts

	else
		puts (bottles - 1).to_s + " bottles of beer on the wall!"
		puts
	end

	bottles = bottles - 1

end	

puts bottles.to_s + ' bottle of beer on the wall,'
puts bottles.to_s + ' bottle of beer,'

puts "Take one down, pass it around,"
puts "No more bottles of beer on the wall!"
