class CourseEnrollment < ActiveRecord::Base

	belongs_to :student
  belongs_to :course
  
  validates :presence_count, allow_blank: true, length: { in: 1..20}
  validates :class_activity_score, allow_blank: true, length: { in: 1..100}
  validates :mid_term_score, allow_blank: true, length: { in: 1..100}
  validates :final_term_score, allow_blank: true, length: { in: 1..100}
  validates :final_score, allow_blank: true, length: { in: 1..100}
  
end