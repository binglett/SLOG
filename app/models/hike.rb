class Hike < ActiveRecord::Base
  validates :name, presence: true
  validates :region, presence: true
  validates :distance, presence: true
end
