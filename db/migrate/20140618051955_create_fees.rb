class CreateFees < ActiveRecord::Migration
  def change
    create_table :fees do |t|
      t.float :cantidaddinero
      t.date :fechaestablecida
      t.references :user, index: true

      t.timestamps
    end
  end
end
