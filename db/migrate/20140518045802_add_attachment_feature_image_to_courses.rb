class AddAttachmentFeatureImageToCourses < ActiveRecord::Migration
  def self.up
    change_table :courses do |t|
      t.attachment :feature_image
    end
  end

  def self.down
    drop_attached_file :courses, :feature_image
  end
end
