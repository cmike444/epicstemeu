json.array!(@steps) do |step|
  json.extract! step, :id, :name, :description, :completed
  json.url step_url(step, format: :json)
end
