class Hike < ActiveRecord::Base
  has_many :events
  
  validates :name, presence: true, uniqueness: true
  validates :region, presence: true
  validates :distance, presence: true
  validates :distance, :numericality => { :less_than_or_equal_to => 50000 }
  validates :distance, :numericality => { :greater_than_or_equal_to => 0 }
  validates :lat, presence: true
  validates :lat, :numericality => { :greater_than_or_equal_to => -90 }
  validates :lat, :numericality => { :less_than_or_equal_to => 90 }
  validates :lng, presence: true
  validates :lng, :numericality => { :greater_than_or_equal_to => -180 }
  validates :lng, :numericality => { :less_than_or_equal_to => 180 }
  
  #Attempt to add coord params to default root
  #def to_param
  #  id.to_s+"?lat="+lat.to_s+"&lng="+lng.to_s;
  #end
end
