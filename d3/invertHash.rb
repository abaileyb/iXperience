def invert(hashin)
	newhash = {}
	hashin.each do |key, value|
		newhash[value] = key
	end
	newhash
end


test_hash = {}
test_hash["dog"] = "lucky"
test_hash["cat"] = "kitty"

puts invert(test_hash)