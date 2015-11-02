class Hike < ActiveRecord::Base
  validates :name, presence: true
end
