class Book < ActiveRecord::Base
  belongs_to :provider
  belongs_to :category

validates :isbn, :presence => true
validates :claveinterna, :presence => true
validates :titulo, :presence => true
validates :autor, :presence => true
validates :editorial, :presence => true
validates :stock, :presence => true
validates :precio, :presence => true
validates :provider_id, :presence => true
validates :category_id, :presence => true

end

