require 'restClient'
rest_data = RestClient.get("https://api.groupme.com/v3/groups?token=i59NaGsAjkRXoiMmVZ86H0eCVsaWP4CRedITJVwS&per_page=50")
json_data = JSON.load rest_data


#Returns the index of the group designated by group_name in the response array
def group_index(group_name, json_data)
	i = 0
	group_name.downcase!
	json_data["response"].each do |group|
		if group["name"].downcase == group_name
			return i
		end
		i += 1
	end
	nil
end


#Returns a list of members that are muted given a group_name
def muted_members(group_index, json_data)
	list = []
	json_data["response"][group_index]["members"].each do |member|
		if member["muted"]
			list.push(member["nickname"])
		end
	end
	list
end


def find_muted_members(group_name, json_data)
	index = group_index(group_name, json_data)
	if index == nil 
		return "Sorry you entered an invalid groupname"
	end

	list = muted_members(index, json_data)
end



p find_muted_members("tke", json_data)



    