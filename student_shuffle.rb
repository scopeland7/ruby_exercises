# students = ['Bobby Sue', 'Spongebob', 'Billy', 'Angelina', 'Brad', 'Georgia', 'Donna', 'Rose', 'Martha', 'Amy']
students = []
student = ' '
puts "Who is in class today? Hit return on a blank line when finished."

while true
	student = gets.chomp
	if student == ''
		break
	end
	students.push(student.downcase)
end

students.shuffle!

count = 0

num_students = students.length

until count == num_students
	if num_students == 1
		puts "#{students[0]} is a lone wolf!"
		break
	end

	if num_students % 2 == 1
		if count < num_students - 3
			puts "#{students[count]} & #{students[count + 1]}"
		else
			puts "#{students[count]}, #{students[count + 1]} & #{students[count + 2]}"
			break
		end
	else
			puts "#{students[count]} & #{students[count + 1]}"
	end
	count += 2
end

puts students.to_s