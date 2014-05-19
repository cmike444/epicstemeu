class CourseImage < ActiveRecord::Base
	has_attached_file :asset, styles: {
		large: '1024x1024>',
		medium: '300x300>',
		small: '64x64!'
	}
	validates_attachment_content_type :asset, :content_type => /\Aimage\/.*\Z/
end
