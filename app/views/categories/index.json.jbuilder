json.array!(@categories) do |category|
  json.extract! category, :id, :nombreCategoria, :descripcionCategoria
  json.url category_url(category, format: :json)
end
