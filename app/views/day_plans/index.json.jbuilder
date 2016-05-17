json.array!(@day_plans) do |day_plan|
  json.extract! day_plan, :id, :name
  json.url day_plan_url(day_plan, format: :json)
end
