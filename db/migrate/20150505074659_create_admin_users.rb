class CreateAdminUsers < ActiveRecord::Migration
  def change
    create_table :admin_users do |t|
      t.string :username
      t.string :password_digest
      t.string :email
      t.string :image

      t.timestamps null: false
    end
  end
end
