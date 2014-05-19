class CreateCourseImages < ActiveRecord::Migration
  def change
    create_table :course_images do |t|
      t.timestamps
    end
    add_attachment :course_images, :asset
  end
end
