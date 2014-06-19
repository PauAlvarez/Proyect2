class CreateOrderDetails < ActiveRecord::Migration
  def change
    create_table :order_details do |t|
      t.integer :cantidadlibros
      t.float :descuento
      t.float :preciounitario
      t.float :cantidadtotal
      t.float :importe
      t.references :order, index: true
      t.references :book, index: true

      t.timestamps
    end
  end
end
