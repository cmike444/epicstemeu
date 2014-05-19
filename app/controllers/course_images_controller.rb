class CourseImagesController < InheritedResources::Base
	before_action :set_course_image, only: [:show, :edit, :update, :destroy]
	def index
		@course_images = CourseImage.all
	end

	def show
	end

	def new
		@course_image = CourseImage.new
	end

	def edit
	end

	def create
		@course_image = CourseImage.new(course_image_params)

		respond_to do |format|
	      if @course_image.save
	        format.html { redirect_to @course_image, notice: 'Course image was successfully created.' }
	        format.json { render :show, status: :created, location: @course_image }
	      else
	        format.html { render :new }
	        format.json { render json: @course_image.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def update
		respond_to do |format|
	      if @course_image.update(course_image_params)
	        format.html { redirect_to @course_image, notice: 'Course image was successfully updated.' }
	        format.json { render :show, status: :ok, location: @course_image }
	      else
	        format.html { render :edit }
	        format.json { render json: @course_image.errors, status: :unprocessable_entity }
	      end
	    end
	end

	def destroy
		@course_image.destroy
		respond_to do |format|
	      format.html { redirect_to course_images_url, notice: 'Course image was successfully destroyed.' }
	      format.json { head :no_content }
	    end
	end

	private
		def set_course_image
			@course_image = CourseImage.find(params[:id])
		end

		def course_image_params
			params.require(:course_image).permit(:asset)
		end
end
