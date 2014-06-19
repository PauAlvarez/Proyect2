class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :nombreUser
      t.string :direccionUser
      t.string :telefonoUser
      t.string :emailUser
      t.string :contrasenaUser
      t.boolean :roluser

      t.timestamps
    end
  end
end
