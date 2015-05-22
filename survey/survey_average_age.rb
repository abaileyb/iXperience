puts "Hello"

puts "How old are you?"
user_age = gets.chomp.to_i

puts "How old is your mom?"
mom_age = gets.chomp.to_i

puts "How old is your dad?"
dad_age = gets.chomp.to_i

average = (user_age + mom_age + dad_age) / 3
puts "Thanks for answering my creepy questions! THe average age of you family is #{average} years old!"

puts "Goodbye!"