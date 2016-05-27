json.array!(@activities) do |activity|
  json.extract! activity, :id, :code, :area, :team, :startdate, :week, :shift, :month, :year, :supervisor, :summaty, :category, :activity, :hours
  json.url activity_url(activity, format: :json)
end
