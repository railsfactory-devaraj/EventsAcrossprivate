class Event < ApplicationRecord
	include Searchable
	has_and_belongs_to_many :users, after_add:    [ lambda { |a,c| a.__elasticsearch__.index_document } ], after_remove: [ lambda { |a,c| a.__elasticsearch__.index_document } ]
	has_and_belongs_to_many :locations, after_add:    [ lambda { |a,c| a.__elasticsearch__.index_document } ], after_remove: [ lambda { |a,c| a.__elasticsearch__.index_document } ]

	validates_presence_of :title, :description, :starts_at, :ends_at, :locations
	# Custom validations
	validate :validate_start_and_end_date

	def validate_start_and_end_date
	end
	Event.import force: true
end
