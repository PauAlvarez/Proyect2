class Book < ActiveRecord::Base
  belongs_to :provider
  belongs_to :category
end
