class Teacher < ActiveRecord::Base

	has_many :courses
	has_secure_password
	
	EMAIL_REGEX = /\A[a-z0-9._%+-]+@[a-z0-9.-]+\.[a-z]{2,4}\Z/i
	validates_presence_of :first_name
	validates_length_of :first_name, :maximum => 25
	validates_presence_of :last_name
	validates_length_of :last_name, :maximum => 50
	validates_presence_of :username
	validates_length_of :username, :within => 8..25
	validates_uniqueness_of :username
	validates_presence_of :email
	validates_length_of :email, :maximum => 100
	validates_format_of :email, :with => EMAIL_REGEX
	validates_presence_of :category
	validates_length_of :category, :maximum => 25
	  validates :password, 
          # you only need presence on create
          :presence => { :on => :create },
          # allow_nil for length (presence will handle it on create)
          :length   => { :minimum => 6, :allow_nil => true },
          # and use confirmation to ensure they always match
          :confirmation => true	
	scope :newest_first, lambda { order("teachers.created_at DESC") }
	scope :search, lambda { |query|
		where(["name LIKE ?","%#{query}%"])
												}
												
	def name 
		"#{first_name} #{last_name}"
	end
end
