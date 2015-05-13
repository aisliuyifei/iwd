json.array!(@activities) do |activity|
  json.extract! activity, :id, :orgnizer_id, :name, :open_date, :description
  json.url activity_url(activity, format: :json)
end
