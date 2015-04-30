class AddUsernameToStudents < ActiveRecord::Migration
  def change
  	add_column("students", "username", :string, :limit => 25, :after =>"email")
  end
end
