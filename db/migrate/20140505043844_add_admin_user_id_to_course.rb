class AddAdminUserIdToCourse < ActiveRecord::Migration
  def change
    add_column :courses, :admin_user_id, :integer
  end
end
