class CreateCategories < ActiveRecord::Migration
  def change
  	drop_table categories
    create_table :categories do |t|
      t.string :nombreCategoria
      t.text :descripcionCategoria

      t.timestamps
    end
  end
end
