json.array!(@users) do |user|
  json.extract! user, :id, :nombreUser, :direccionUser, :telefonoUser, :emailUser, :contrasenaUser, :roluser
  json.url user_url(user, format: :json)
end
