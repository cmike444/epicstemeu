class AddResourcesToCourses < ActiveRecord::Migration
  def change
  	add_column :courses, :project_files, :string
  	add_column :courses, :video_transcript, :string
  	add_column :courses, :pdf_download, :string
  end
end
