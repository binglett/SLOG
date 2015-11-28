# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hikes_list = [
  [ "Admiralty Point", 5, "Tri Cities", 1, 49.2985858, -122.925777 ],
  [ "Al's Habrich Ridge Trail", 7, "Howe Sound", 2, 49.2985858, -122.925777 ],
  [ "Aldergrove Regional Park", 5, "Surrey and Langley", 1, 49.2985858, -122.925777 ],
  [ "Alice Lake", 6, "Howe Sound", 1, 49.2985858, -122.925777 ],
  [ "Ancient Cedars Trail", 5, "Whistler", 2, 49.2985858, -122.925777 ],
  [ "Baden Powell Deep Cove to Lynn Canyon", 12, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Baden Powell Lynn Canyon to Grouse", 10, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "BCMC Trail", 3, "The North Shore", 3, 49.2985858, -122.925777 ],
  [ "Big Cedar and Kennedy Falls Trail", 10,"The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Black Tusk", 29, "Whistler", 3, 49.2985858, -122.925777 ],
  [ "Blackcomb Meadows", 8, "Whistler", 2, 49.2985858, -122.925777 ],
  [ "Boundary Bay Regional Park", 5, "Tsawwassen and Delta", 1, 49.2985858, -122.925777 ],
  [ "Brae Island Regional Park", 4.2, "Surrey and Langley", 1, 49.2985858, -122.925777 ],
  [ "Brandywine Falls", 1, "Whistler", 1, 49.2985858, -122.925777 ],
  [ "Brandywine Meadows", 6, "Whistler", 3, 49.2985858, -122.925777 ],
  [ "Bridal Veil Falls", 0.8, "Fraser Valley East", 1, 49.2985858, -122.925777 ],
  [ "Brohm Lake", 7.5, "Howe Sound", 2, 49.2985858, -122.925777 ],
  [ "Brothers Creek Loop", 7, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Brunswick Point", 8, "Tsawwassen and Delta", 1, 49.2985858, -122.925777 ],
  [ "Buntzen Lake", 8, "Tri Cities", 1, 49.2985858, -122.925777 ],
  [ "Burnaby Lake", 10, "Vancouver City", 1, 49.2985858, -122.925777 ],
  [ "Burnaby Mountain", 7.5, "Vancouver City", 1 ],
  [ "Burns Bog Delta Nature Reserve", 3, "Tsawwassen and Delta", 1, 49.2985858, -122.925777 ],
  [ "Campbell Valley Regional Park", 4, "Surrey and Langley", 1, 49.2985858, -122.925777 ],
  [ "Capilano Canyon", 2.6, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Capilano Pacific Trail", 15, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Cascade Falls", 0.75, "Fraser Valley East", 1, 49.2985858, -122.925777 ],
  [ "Cheakamus Lake", 16, "Whistler", 1, 49.2985858, -122.925777 ],
  [ "Cheam Lake Wetlands", 2.3, "Fraser Valley East", 1, 49.2985858, -122.925777 ],
  [ "Conflict Lake", 12, "Whistler", 2, 49.2985858, -122.925777 ],
  [ "Coquitlam Crunch", 4.5, "Tri Cities", 2, 49.2985858, -122.925777 ],
  [ "Crown Mountain", 9.8, "The North Shore", 3, 49.2985858, -122.925777 ],
  [ "Crystal Falls", 7, "Tri Cities", 1, 49.2985858, -122.925777 ],
  [ "Cypress Falls", 3, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Dam Mountain", 5, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Deas Island Regional Park", 4.5, "Tsawwassen and Delta", 1, 49.2985858, -122.925777 ],
  [ "Deer Lake", 5, "Vancouver City", 1, 49.2985858, -122.925777 ],
  [ "Derby Reach Regional Park", 8, "Surrey and Langley", 1, 49.2985858, -122.925777 ],
  [ "Dilly Dally Loop", 25, "Tri Cities", 3, 49.2985858, -122.925777 ],
  [ "Dog Mountain", 5, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Eagle Bluffs", 8, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Elfin Lakes", 22, "Howe Sound", 2, 49.2985858, -122.925777 ],
  [ "Elk Mountain", 7, "Fraser Valley East", 2, 49.2985858, -122.925777 ],
  [ "Garibaldi Lake", 18, "Whistler", 2, 49.2985858, -122.925777 ],
  [ "Goat Mountain", 8, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Gold Creek Falls", 5.5, "Ridge Meadows", 1, 49.2985858, -122.925777 ],
  [ "Golden Ears", 24, "Ridge Meadows", 3, 49.2985858, -122.925777 ],
  [ "Goldie Lake", 3, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Grouse Grind", 2.9, "The North Shore", 3, 49.2985858, -122.925777 ],
  [ "Hanes Valley Trail", 16, "The North Shore", 3, 49.2985858, -122.925777 ],
  [ "Harrison Grind", 7, "Fraser Valley East", 3, 49.2985858, -122.925777 ],
  [ "Hayward Lake", 17, "Fraser Valley East", 1, 49.2985858, -122.925777 ],
  [ "Hicks Lake", 6, "Fraser Valley East", 1, 49.2985858, -122.925777 ],
  [ "High Falls Creek", 12, "Howe Sound", 2, 49.2985858, -122.925777 ],
  [ "High Note Trail", 9.5, "Whistler", 2, 49.2985858, -122.925777 ],
  [ "Hollyburn Mountain", 7, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Iona Beach Regional Park", 6, "Vancouver City", 1, 49.2985858, -122.925777 ],
  [ "Joffre Lakes", 11, "Pemberton", 2, 49.2985858, -122.925777 ],
  [ "Jug Island Beach", 5.5, "Tri Cities", 2, 49.2985858, -122.925777 ],
  [ "Kanaka Creek Cliff Falls", 4, "Ridge Meadows", 1, 49.2985858, -122.925777 ],
  [ "Kanaka Creek Riverfront", 2.5, "Ridge Meadows", 1, 49.2985858, -122.925777 ],
  [ "Killarney Lake", 9, "Howe Sound", 1, 49.2985858, -122.925777 ],
  [ "Levette Lake Loop", 11, "Howe Sound", 2, 49.2985858, -122.925777 ],
  [ "Lighthouse Park", 6, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Lindeman Lake", 3.4, "Fraser Valley East", 2, 49.2985858, -122.925777 ],
  [ "Lions Bay Loop", 4.5, "Howe Sound", 1, 49.2985858, -122.925777 ],
  [ "Little Goat Mountain", 5.5, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Lost Lake Nature Trail", 5, "Whistler", 1, 49.2985858, -122.925777 ],
  [ "Lower Hollyburn", 10, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Lynn Loop", 5.1, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Lynn Peak", 9, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Maplewood Flats", 2.5, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Mike Lake", 2, "Ridge Meadows", 1, 49.2985858, -122.925777 ],
  [ "Minnekhada Regional Park", 10, "Tri Cities", 1, 49.2985858, -122.925777 ],
  [ "Mount Cheam", 9.5, "Fraser Valley East", 2, 49.2985858, -122.925777 ],
  [ "Mount Fromme", 10, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Mount Gardner", 17, "Howe Sound", 2, 49.2985858, -122.925777 ],
  [ "Mount Seymour", 9, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Mount Strachan", 10.5, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Mount Thom", 10, "Fraser Valley East", 2, 49.2985858, -122.925777 ],
  [ "Mundy Park", 6, "Tri Cities", 1, 49.2985858, -122.925777 ],
  [ "Mystery Lake", 3, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Nairn Falls", 3, "Pemberton", 1, 49.2985858, -122.925777 ],
  [ "Norvan Falls", 14, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Pacific Spirit Regional Park", 10, "Vancouver City", 1, 49.2985858, -122.925777 ],
  [ "Panorama Ridge", 30, "Whistler", 3, 49.2985858, -122.925777 ],
  [ "Petgill Lake", 11.5, "Howe Sound", 2, 49.2985858, -122.925777 ],
  [ "Pitt Wildlife Loop", 15, "Ridge Meadows", 1, 49.2985858, -122.925777 ],
  [ "Quarry Rock", 3.8, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Rainbow Lake", 16, "Whistler", 2, 49.2985858, -122.925777 ],
  [ "Reifel Bird Sanctuary", 5, "Tsawwassen and Delta", 1, 49.2985858, -122.925777 ],
  [ "Rice Lake", 3, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Rolley Lake", 5, "Fraser Valley East", 1, 49.2985858, -122.925777 ],
  [ "Sasamat Lake", 8, "Tri Cities", 1, 49.2985858, -122.925777 ],
  [ "Sendero Diez Vistas", 15, "Tri Cities", 2, 49.2985858, -122.925777 ],
  [ "Serpentine Fen Nature Trail", 3.5, "Surrey and Langley", 1, 49.2985858, -122.925777 ],
  [ "Shadow Lake", 5, "Pemberton", 1, 49.2985858, -122.925777 ],
  [ "Shoreline Trail", 6, "Tri Cities", 1, 49.2985858, -122.925777 ],
  [ "Skyline Trail", 5, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "St Mark's Summit", 11, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Stanley Park", 6.5, "Vancouver City", 1, 49.2985858, -122.925777 ],
  [ "Stawamus Chief", 11, "Howe Sound", 2, 49.2985858, -122.925777 ],
  [ "Sumas Mountain", 13.5, "Fraser Valley East", 2, 49.2985858, -122.925777 ],
  [ "Teapot Hill", 5, "Fraser Valley East", 1, 49.2985858, -122.925777 ],
  [ "The Lions Binkert Trail", 16, "Howe Sound", 3, 49.2985858, -122.925777 ],
  [ "Thunderbird Ridge", 6, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Two Canyon Loop", 8, "The North Shore", 2, 49.2985858, -122.925777 ],
  [ "Tynehead Regional Park", 4.5, "Surrey and Langley", 1, 49.2985858, -122.925777 ],
  [ "UBC Malcolm Knapp Research Forest", 8, "Ridge Meadows", 2, 49.2985858, -122.925777 ],
  [ "Upper Shannon Falls", 7.5, "Howe Sound", 2, 49.2985858, -122.925777 ],
  [ "Velodrome Trail", 3, "Vancouver City", 2, 49.2985858, -122.925777 ],
  [ "Wedgemount Lake", 14, "Whistler", 3, 49.2985858, -122.925777 ],
  [ "Whippoorwill Point Trail", 4, "Fraser Valley East", 1, 49.2985858, -122.925777 ],
  [ "Whyte Lake", 5, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Whytecliff Park", 2, "The North Shore", 1, 49.2985858, -122.925777 ],
  [ "Widgeon Falls", 6, "Ridge Meadows", 1, 49.2985858, -122.925777 ],
  [ "Woodland Walk Trail", 8, "Tri Cities", 1, 49.2985858, -122.925777 ]
]

events_list = [
  [ "TGIF", "Admirality Point", Date.parse("2015-11-1"), 1 ],
  [ "Apples", "Burnaby Lake", Date.parse("2015-12-1"), 1 ],
  [ "Elephant", "Admirality Point", Date.parse("2015-1-1"), 1 ],
  [ "Midterms are Over", "Cheam Lake Wetlands", Date.parse("2015-12-13"), 1 ],
  [ "Catching Sunrise", "Elk Mountain", Date.parse("2015-1-23"), 1 ],
  [ "3 Day Trek", "Burnaby Lake", Date.parse("2015-12-30"), 1 ]
]

hikes_list.each do |name, distance, region, difficulty, lat, lng|
  Hike.create( name: name, distance: distance, region: region, difficulty: difficulty, lat: lat, lng: lng)
end

events_list.each do |name, location, date, hike_id|
  Event.create( name: name, location: location, date: date, hike_id: hike_id )
end

User.create!(username:  "Example_User",
             email: "admin@FDISSEET.com",
             password:              "foobar",
             password_confirmation: "foobar")

99.times do |n|
  username  = Faker::Name.name
  email = "example-#{n+1}@fake.org"
  password = "password"
  User.create!(username:  username,
    email: email,
    password:              password,
    password_confirmation: password)
  end
users = User.order(:created_at).take(6)
50.times do
  content = Faker::Lorem.sentence(5)
  users.each { |user| user.microposts.create!(content: content) }
end
