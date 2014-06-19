class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.date :fechapedido
      t.date :fechaprogamada
      t.date :fechaentregada
      t.integer :estatus
      t.references :user, index: true
      t.references :client, index: true

      t.timestamps
    end
  end
end
