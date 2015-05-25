def index_of(string, letter)
	string.include?(letter) ? string.index(letter) : -1
end

puts index_of("abcdefghijklmno", "m")


people = [
  {
    :id => 1,
    :name => "bru"
  },
  {
    :id => 2,
    :name => "ski"
  },
  {
    :id => 3,
    :name => "brunette"
  },
  {
    :id => 4,
    :name => "ski"
  }
]

def find_by_name(array_of_hashes, name)
	array_of_hashes.each do |hash|
		return hash if hash[:name] == name
	end
	nil
end

puts find_by_name(people, "ski")
puts find_by_name(people, "the").class()


def filter_by_name(array_of_hashes, name)
	array = []
	array_of_hashes.each do |hash|
		array << hash if hash[:name] == name
	end
	array
end

def filter(array_of_hashes)
  array = []
  
end

puts filter_by_name(people, "ski")


puts filter_by_name(people, "ski")