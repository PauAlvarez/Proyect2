json.array!(@order_details) do |order_detail|
  json.extract! order_detail, :id, :cantidadlibros, :descuento, :preciounitario, :cantidadtotal, :importe, :order_id, :book_id
  json.url order_detail_url(order_detail, format: :json)
end
