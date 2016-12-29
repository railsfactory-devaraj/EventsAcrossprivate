class Location < ApplicationRecord
	has_and_belongs_to_many :events
	validates_presence_of :city,:country,:pin
end
