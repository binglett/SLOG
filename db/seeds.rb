# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

hikes_list = [
  [ "Admirality Point", 5000, "Tri Cities", 0, 1, 5 ],
  [ "Burnaby Lake", 7500, "Vancouver City", 0, 1, 4 ],
  [ "Cheam Lake Wetlands", 2300, "Fraser Valley East", 0, 1, 0 ],
  [ "Elk Mountain", 7000, "Fraser Valley East", 0, 2, 4 ]
]

events_list = [
  [ "TGIF", "Admirality Point", Date.parse("2015-11-1")],
  [ "Apples", "Burnaby Lake", Date.parse("2015-12-1")],
  [ "Elephant", "Admirality Point", Date.parse("2015-1-1")],
  [ "Midterms are Over", "Cheam Lake Wetlands", Date.parse("2015-12-13")],
  [ "Catching Sunrise", "Elk Mountain", Date.parse("2015-1-23")],
  [ "3 Day Trek", "Burnaby Lake", Date.parse("2015-12-30")]
]
hikes_list.each do |name, distance, region, grade, difficulty, rating|
  Hike.create( name: name, distance: distance, region: region, grade: grade, difficulty: difficulty, 
  					rating: rating )
end

events_list.each do |name, location, date|
  Event.create( name: name, location: location, date: date )
end

    # t.datetime "created_at", null: false
    # t.datetime "updated_at", null: false
    # t.string   "name"
    # t.integer  "distance"
    # t.string   "region"
    # t.integer  "grade"
    # t.integer  "difficulty"
    # t.float    "rating"
    # t.datetime "open_date"
    # t.datetime "close_date"

