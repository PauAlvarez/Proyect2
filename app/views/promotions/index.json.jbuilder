json.array!(@promotions) do |promotion|
  json.extract! promotion, :id, :fechapromo, :mediodecomunica, :descrippromo, :acuerdo, :user_id, :client_id
  json.url promotion_url(promotion, format: :json)
end
