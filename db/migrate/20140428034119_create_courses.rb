class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.boolean :completed
      t.timestamps
    end

    create_table :steps do |t|
      t.string :name
      t.text :description
      t.boolean :completed
      t.timestamps
    end

  end
end
