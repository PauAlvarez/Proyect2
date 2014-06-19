json.array!(@clients) do |client|
  json.extract! client, :id, :nombreClient, :telefonoClient, :direccionClient, :emailClient, :rfcClient, :razonsocialClient, :facebookClient, :linkedinClient
  json.url client_url(client, format: :json)
end
