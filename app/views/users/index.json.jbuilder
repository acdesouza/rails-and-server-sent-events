json.array!(@users) do |user|
  json.extract! user, :name, :phone
  json.url user_url(user, format: :json)
end
