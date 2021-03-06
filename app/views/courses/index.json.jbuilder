json.array!(@courses) do |course|
  json.extract! course, :id, :name, :description, :completed
  json.url course_url(course, format: :json)
end
