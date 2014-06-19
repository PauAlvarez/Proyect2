json.array!(@fees) do |fee|
  json.extract! fee, :id, :cantidaddinero, :fechaestablecida, :user_id
  json.url fee_url(fee, format: :json)
end
