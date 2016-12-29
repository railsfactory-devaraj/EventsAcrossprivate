class User < ApplicationRecord
	# attr_accessor :password, :password_confirmation
	# Email validations
	validates :email, presence: true, uniqueness: true
	validates :email, :format => VALID_EMAIL_REGEX
	
	# Password validations
	validates :password, :confirmation => true
	validates :password_confirmation, presence: true
	
	# relationships
	has_and_belongs_to_many :events
	
	#bcrypt method to make sure user has hashed password
	has_secure_password
end
