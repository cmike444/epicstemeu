class Step < ActiveRecord::Base
	belongs_to :course
	# has_many :users, through: :course
end
