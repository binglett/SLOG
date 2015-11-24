class Hike < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  validates :region, presence: true
  validates :distance, presence: true
  validates :lat, presence: true
  validates :lng, presence: true
  
  has_many :events
  #Attempt to add coord params to default root
  #def to_param
  #  id.to_s+"?lat="+lat.to_s+"&lng="+lng.to_s;
  #end
end
