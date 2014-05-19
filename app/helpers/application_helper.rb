module ApplicationHelper
	def course_progress
		ratio = @course.steps.where(:completed => true).size / @course.steps.size
		number_to_percentage(ratio, precision: 0)
	end
end
