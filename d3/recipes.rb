recipes = {
	salad: {
		description: "A simple ceasar salad",
		ingredients: ["lettuce", "croutons", "chicken"],
		steps: ["cut lettuce", "cut chicken", "put in bowl", "add croutons"]
	},

	:burger => {
		description: "A cheeseburger",
		ingredients: ["patty", "ketchup", "lettuce", "bun", "avocado", "cheese"],
		steps: ["cook patty", "cut lettuce", "put patty on bun", "add extras"]
	},

	:hotdog => {
		description: "A hotdog",
		ingredients: ["hotdog", "bun", "ketchup"],
		steps: ["cook hotdog", "put meet on bun", "add ketchup"]
	},
}

puts recipes.keys
puts recipes.values