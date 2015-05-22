puts "Enter a number:"
desired_fib = gets.strip.to_i

previous = 1
current = 1
counter = 2

while (counter < desired_fib)
	temp = current
	current = current + previous
	previous = temp
	counter = counter + 1
end

puts "Fibonnaci at #{desired_fib}: #{current}"