class Course < ActiveRecord::Base

	belongs_to :teacher
	
	validates_presence_of :name
	validates_length_of :name, :maximum => 25
	validates_presence_of :category
	validates_length_of :category, :maximum => 25

	
end
