puts "Hey bru (South African for \"bro\"). Let's compute some quadform."

puts "Give me an A:"
a = gets.chomp.to_f

puts "Give me a B:"
b = gets.chomp.to_f

puts "Give me a C:"
c = gets.chomp.to_f

puts "beep computing boop boop..."

det = (b*b - 4*a*c)


if det > 0
	root_one = (-b + Math.sqrt(det)) / (2 * a)
	root_two = (-b - Math.sqrt(det)) / (2 * a)
	puts "x is either"
	puts root_one
	puts "or"
	puts root_two
	puts "Goodbye!"
elsif det == 0 
    root = -b / (2 * a)	
	puts "x is"
	puts root
	puts "Goodbye!"
else
	puts "No real roots"
	puts "Goodbye"
end

