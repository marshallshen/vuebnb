hosts = [
  { name: 'Chris Farley', profile_url: 'http://i.imgur.com/MU2dD8E.jpg' },
  { name: 'Anna Taylor', profile_url: 'http://i.imgur.com/A8eQsll.jpg' },
  { name: 'Tom Clark', profile_url: 'http://i.imgur.com/xtoLyW2.jpg' }
]

places = [
  { city: 'Chicago, IL', place_type: 'shared', price: 30, image_url: 'http://placehold.it/350x150' },
  { city: 'New York, NY', place_type: 'shared', price: 45, image_url: 'http://placehold.it/350x150' },
  { city: 'Chicago, IL', place_type: 'shared', price: 85, image_url: 'http://placehold.it/350x150' },
  { city: 'New York, NY', place_type: 'private_room', price: 100, image_url: 'http://placehold.it/350x150' },
  { city: 'Chicago, IL', place_type: 'private_room', price: 105, image_url: 'http://placehold.it/350x150' },
  { city: 'San Francisco, CA', place_type: 'private_room', price: 120, image_url: 'http://placehold.it/350x150' },
  { city: 'Chicago, IL', place_type: 'house', price: 125, image_url: 'http://placehold.it/350x150' },
  { city: 'San Francisco, CA', place_type: 'house', price: 130, image_url: 'http://placehold.it/350x150' }
]

hosts.each do |host_params|
  host = Host.create!(host_params)
  places.pop(3).each do |place_params|
    Place.create(place_params.merge(host_id: host.id))
  end
end
