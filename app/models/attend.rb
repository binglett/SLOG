class Attend < ActiveRecord::Base
	belongs_to :event
	belongs_to :user
	  validates :user_id, presence: true
	  validates :event_id, presence: true

	  has_one :event_id
	  has_one :user_id
end
