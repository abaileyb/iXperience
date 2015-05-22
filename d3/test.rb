def whisper(string_in)
	string_in.downcase
end

def twist(string_in)
	string_in.split(//).shuffle.join
end

string = "TEST"
puts string
puts whisper(string)

puts twist("HI THERE I AM STILL HUNGRY")
puts twist("HI THERE I AM STILL HUNGRY")
