module ApplicationHelper
	def course_progress
		number_to_percentage(@course.steps.where(:completed => true).size / @course.steps.size, precision: 0)
	end
end
