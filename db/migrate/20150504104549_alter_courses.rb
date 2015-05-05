class AlterCourses < ActiveRecord::Migration
  def change
  	remove_column("courses", "start_date")
  	remove_column("courses", "end_date")  	
  	add_column("courses", "start_at", :date)
  	add_column("courses", "end_at", :date)
  end
end
