class Event < ActiveRecord::Base
  belongs_to :hike
  validates :hike_id, 	presence: 	true
  validates :location, 	presence: 	true
  validates :name, 		presence: 	true  

end

