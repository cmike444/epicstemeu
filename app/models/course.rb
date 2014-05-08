class Course < ActiveRecord::Base
	has_many :steps
	belongs_to :admin_user
	

	validates :description, :presence => true
	validates :completed, :inclusion => { :in => [true, false]}
end
