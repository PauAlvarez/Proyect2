class Provider < ActiveRecord::Base
has_many :books

  validates :NombreProvider, :presence => true
  validates :direccionProvider, :presence => true
end
