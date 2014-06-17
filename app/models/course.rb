class Course < ActiveRecord::Base
	has_many :steps
	belongs_to :user

	has_attached_file :feature_image, :styles => { :medium => "300x300>", :thumb => "100x100>" }, :default_url => "/images/default.png"
  	validates_attachment_content_type :feature_image, :content_type => /\Aimage\/.*\Z/

	validates :description, :presence => true
	validates :completed, :inclusion => { :in => [true, false]}
end
