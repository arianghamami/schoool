class CreateCourseEnrollments < ActiveRecord::Migration
  def change
    create_table :course_enrollments do |t|
			t.references :student
			t.references :course     
      t.integer :presence_count
      t.float :class_activity_score
      t.float :mid_term_score
      t.float :final_term_score
      t.float :final_score

      t.timestamps null: false
    end
    add_index :course_enrollments, ["student_id", "course_id"]
  end
end
