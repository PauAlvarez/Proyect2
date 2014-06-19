class CreateBooks < ActiveRecord::Migration
  def change
    create_table :books do |t|
      t.string :isbn
      t.string :claveinterna
      t.string :titulo
      t.string :autor
      t.string :editorial
      t.integer :stock
      t.float :precio
      t.references :provider, index: true
      t.references :category, index: true

      t.timestamps
    end
  end
end
