class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.string :description
      t.boolean :completed
      t.string :—skip-stylesheets

      t.timestamps
    end
  end
end
