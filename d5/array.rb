class Array
	def self.naturals(n)
		array = []
		for i in 1..n 
			array << i
		end
		array
	end

	def increment
		self.map! { |x| x + 1 }
	end

	def increment_by_n(n)
		n.times do ||
			increment
		end
	end


end

puts Array.naturals(3).inspect

array = [1 , 2, 3]
puts array.increment.inspect

array = [1, 2, 3]
array.increment_by_n(2)
puts array.inspect()