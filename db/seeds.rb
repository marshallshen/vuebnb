hosts = [
	{ name: "Chris Farley", profile_url: "http://i.imgur.com/MU2dD8E.jpg" },
	{ name: "Anna Taylor", profile_url: "http://i.imgur.com/A8eQsll.jpg" },
	{ name: "Tom Clark", profile_url: "http://i.imgur.com/xtoLyW2.jpg" },
]

places = [
	{ city: "Chicago, IL", place_type: "shared", price: 30, image_url: "http://i.imgur.com/OIbjNhm.jpg" },
	{ city: "New York, NY", place_type: "shared", price: 45, image_url: "http://i.imgur.com/3UZndwY.jpg"},
	{ city: "Chicago, IL", place_type: "shared", price: 85, image_url: "http://i.imgur.com/8NyUHRL.jpg"},
	{ city: "New York, NY", place_type: "private_room", price: 100, image_url: "http://i.imgur.com/y6h7tOk.jpg"},
	{ city: "Chicago, IL", place_type: "private_room", price: 105, image_url: "http://i.imgur.com/RODhUZF.jpg"},
	{ city: "San Francisco, CA", place_type: "private_room", price: 120, image_url: "http://i.imgur.com/Kvh2J5w.jpg" },
	{ city: "Chicago, IL", place_type: "house", price: 125, image_url: "http://i.imgur.com/aWleDCI.jpg" },
	{ city: "San Francisco, CA", place_type: "house", price: 130, image_url: "http://i.imgur.com/r7cwCdK.jpg" },
]

hosts.each do |host_params|
	host = Host.create!(host_params)
	places.pop(3).each do |place_params|
		Place.create(place_params.merge(host_id: host.id))
	end
end