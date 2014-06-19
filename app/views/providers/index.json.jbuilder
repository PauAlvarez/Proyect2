json.array!(@providers) do |provider|
  json.extract! provider, :id, :NombreProvider, :direccionProvider, :fechadasoProvider
  json.url provider_url(provider, format: :json)
end
