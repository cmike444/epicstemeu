json.array!(@courses) do |course|
  json.extract! course, :id, :name, :description, :completed, :—skip-stylesheets
  json.url course_url(course, format: :json)
end
