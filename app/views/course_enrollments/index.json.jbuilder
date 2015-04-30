json.array!(@course_enrollments) do |course_enrollment|
  json.extract! course_enrollment, :id, :presence_count, :class_activity_score, :mid_term_score, :final_term_score, :final_score
  json.url course_enrollment_url(course_enrollment, format: :json)
end
