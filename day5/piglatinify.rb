class String

	def is_capital
		if (self == self.downcase)
			false
		else
			true
		end
	end

	def is_vowel
		letter = self.downcase
		if letter == "a" || letter == "i" ||letter == "e" || letter == "o" || letter == "u"
			true
		else
			false
		end
	end

	def first_vowel_index
		i = 0
		while i < self.size
			if (self[i].is_vowel)
				return i
			else
				i += 1
			end
		end
	end
end

def piglatinify(string)
	need_to_cap = false
	need_to_cap = true if string[0].is_capital

	string.downcase!
	fvi = string.first_vowel_index

	if fvi == 0
		string.insert(-1, "way")
	else
		string.insert(-1, string[0..fvi-1])
		string.insert(-1, "ay")
		string.slice!(0..fvi-1)

		string[0] = string[0].upcase! if need_to_cap
	end

	string
end


puts piglatinify("egg")
puts piglatinify("trust")
puts piglatinify("igloo")
puts piglatinify("Ruby")



