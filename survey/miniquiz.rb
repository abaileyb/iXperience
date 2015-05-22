puts "Welcome to Bailey's mini quiz."

points = 0

##Question 1##
puts "How many dogs do I have"
ans1 = gets.strip.to_i
if (ans1 == 4)
	points = points + 1
	puts "Right! You have 1 point"
else
	puts "Wrong... I have 4 dogs. You have 0 points"
end

puts "What is my step-sister's name?"
ans2 = gets.strip

if(ans2 == "Sydney")
	points = points + 1
	if (points == 1)
		puts "Right! You have 1 point"
	else
		puts "Right! You have 2 points"
	end
else
	if (points == 1)
		puts "No! Her name is Sydney. You have 1 point"
	else
		puts "No! Her name is Sydney. You have 0 points"
	end
end

puts "What is my current favorite TV Show"
ans3 = gets.strip

if (ans3 == "Silicon Valley")
	points = points + 1
	if (points == 1)
		puts "Right! You have 1 point"
	else
		puts "Right! You have #{points} points"
	end
else
	if (points == 1)
		puts "No! It's Silicon Valley. You have 1 point"
	else
		puts "No! It's Silicon Valley. You have #{points} points"
	end
end

puts "Thanks for playing!"








