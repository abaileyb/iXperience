puts "Welcome to list builder++!"

run = true
list = []
hash = {}
while run
	puts "What can I do for you?"
	command = gets.strip
	command_array = command.split

	if(command_array[0] == "add")
		if(hash[command_array[1]])
			hash[command_array[1]] += 1
		else
			hash[command_array[1]] = 1
		end
		puts "Added! Your container has:"
		puts hash.inspect()
	elsif(command_array[0] == "remove")
		if(hash[command_array[1]])
			hash[command_array[1]] -= 1
			puts "Removed! Your list is:"
			puts hash.inspect()
		else
			puts "Error: There was nothing to remove"
		end
	elsif (command_array[0] == "quit")
		run = false
		puts "Bye!"
	else
		puts "Invalid command"
	end
	
end