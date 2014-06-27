class Client < ActiveRecord::Base

validates :nombreClient, presence: true, length: { within: 5..10 }
validates :telefonoClient, :presence => true
validates :direccionClient, :presence => true
validates :emailClient, :presence => true
validates :rfcClient, :presence => true
validates :razonsocialClient, :presence => true
validates :facebookClient, :presence => true
validates :linkedinClient, :presence => true
end