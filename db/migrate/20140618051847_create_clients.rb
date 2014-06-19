class CreateClients < ActiveRecord::Migration
  def change
    create_table :clients do |t|
      t.string :nombreClient
      t.string :telefonoClient
      t.string :direccionClient
      t.string :emailClient
      t.string :rfcClient
      t.string :razonsocialClient
      t.string :facebookClient
      t.string :linkedinClient

      t.timestamps
    end
  end
end
