class Promotion < ActiveRecord::Base
  belongs_to :user
  belongs_to :client

  MEDIOS = %w[email telefono presencial]
  validates :descrippromo, :acuerdo, :presence => { message: "No puede dejarse vacio" }

end
