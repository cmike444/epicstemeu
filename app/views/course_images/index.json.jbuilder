json.array!(@course_images) do |course_image|
  json.extract! course_image, :id
  json.url course_image_url(course_image, format: :json)
end
