class Category < ActiveRecord::Base
  has_many :books

  validates :nombreCategoria, :presence => true
  validates :descripcionCategoria, :presence => true

end
