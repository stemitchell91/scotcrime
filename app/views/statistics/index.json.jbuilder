json.array!(@statistics) do |statistic|
  json.extract! statistic, :id, :year, :percentage
  json.url statistic_url(statistic, format: :json)
end
