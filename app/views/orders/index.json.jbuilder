json.array!(@orders) do |order|
  json.extract! order, :id, :fechapedido, :fechaprogamada, :fechaentregada, :estatus, :user_id, :client_id
  json.url order_url(order, format: :json)
end
