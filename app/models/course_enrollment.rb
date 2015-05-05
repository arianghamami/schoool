class CourseEnrollment < ActiveRecord::Base

	belongs_to :student
  belongs_to :course
  
  validates :presence_count, :presence => { :on => [:create,:update] }, inclusion: { in: 0..20 }
  validates :class_activity_score, :presence => { :on => [:create,:update] }, inclusion: { in: 0..100}
  validates :mid_term_score, :presence => { :on => [:create,:update] }, inclusion: { in: 0..100}
  validates :final_term_score, :presence => { :on => [:create,:update] }, inclusion: { in: 0..100}
  validates :final_score, :presence => { :on => [:create,:update] }, inclusion: { in: 0..100}
  validates_uniqueness_of :student_id, scope: :course_id
	validates_associated :course, message: 'is already full'
	validate :presence_max_sessions
  
  def final_score
  	"#{class_activity_score / 4 }".to_i  + "#{mid_term_score / 4}".to_i + "#{final_term_score / 2}".to_i
	end  
  
  def presence_max_sessions
  	if presence_count > course.sessions 
  		errors.add(:base, 'You have reached max sessions')
  	end
  end
  
end
